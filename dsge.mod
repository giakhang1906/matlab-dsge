var C, I, a, w, r, r_f, C_G, C_NG, Y_G, Y_NG, K_G, K_NG, 
    P, P_G, P_NG, pi_G, pi_NG, D, A_G; %Endogenous variables 
    
varexo EPS_G;       

parameters beta, psi, phi, alpha_G, delta, gamma_G, gamma_NG, 
           theta, rho, T_v, T_c, A_NG; 

beta = 0.9;
psi = 0.5; %CES utility for aggregate C
phi = 0.4;
alpha_G = 0.3;
delta = 0.025;
gamma_G = 0.3; %elasticity of capital
gamma_NG = 0.3; %elasticity of capital
theta = 0.4;
rho = 0.3; 
T_v = 0.3; 
T_c = 0.4;
A_NG = 1;

model;

%% Marginal Utility of Consumption
%lambda = C^(-psi) / ((1 + T_v) * P);

%% Euler equation
%1 = beta * (lambda(+1)/lambda) * (1 - delta + r_f(+1) + w(+1) * (r(+1) - r_f(+1)));
1 = beta * ((C(+1)^(-psi) / ((1 + T_v) * P))/(C^(-psi) / ((1 + T_v) * P))) * (1 - delta + r_f(+1) + w(+1) * (r(+1) - r_f(+1)));

%% Law of Motion 
I = a(+1) - (1 - delta) * a;

% Budget Constraint 
C = (a * (r_f + w * (r - r_f)) - I) / ((1 + T_v) * P);

% Marginal Utility of share of risky asset
%0 = -lambda(+1) * beta * a(+1) * (r(+1) - r_f(+1));
%0 = -lambda * beta * a * (r - r_f);
%r_f(+1) = r(+1);
r_f = r;

%% Share of Green Consumption
C_G = ((P_G / P)^(-psi)) * (1/alpha_G) * C; 

%% Intratemporal Condition (share of non-green consumption)
C_NG = ((P_NG / P)^(-psi)) * (1/(1 - alpha_G)) * C;

% General Price index
P = ((1 / alpha_G) * ((P_G)^(1 - phi)) + (1 / (1 - alpha_G)) * ((P_NG)^(1-phi)))^(1 / (1-phi));

%% Production Function Green
Y_G = A_G * (K_G)^(gamma_G);

%% Production Function Non-green
Y_NG = A_NG * (K_NG)^(gamma_NG);

%% Profit Green 
pi_G = P_G * Y_G - (1 - theta) * r * K_G;

%% Profit Non-green
pi_NG = P_NG * Y_NG - r_f * K_NG;

% Green Price 
P_G = (phi / (
phi - 1)) * (((1 - theta) * r) / (gamma_G * (Y_G / K_G))); 

%Non-green Price
P_NG = (phi / (phi - 1)) * (r_f / (gamma_NG * (Y_NG / K_NG)));

%% MPK = r/p
K_G = (((1 - theta) * r)/ (A_G * gamma_G * P_G))^(1 / (gamma_G - 1));

%% MPK = r/p
K_NG = (r_f / (A_NG * gamma_NG * P_NG))^(1 / (gamma_NG - 1));

% Green Capital demand = Capital supply
%w = ((((1 - theta) * r)/ (A_G * gamma_G * P_G))^(1 / (gamma_G - 1))) / a;
a = ((((1 - theta) * r)/ (A_G * gamma_G * P_G))^(1 / (gamma_G - 1))) / w;

% Non-green Capital demand = Capital supply
%1 = (((r_f / (A_NG * gamma_NG * P_NG))^(1 / (gamma_NG - 1))) / a) + w;
a = ((r_f / (A_NG * gamma_NG * P_NG))^(1 / (gamma_NG - 1))) + w*a;

%% Productivity of Green Firm
log(A_G) = rho * log(A_G(-1)) + EPS_G;

%% Government Budget Constraint
D = T_v * P * C + T_c * (pi_G + pi_NG) - theta * r * K_G;

end;

% Steady-state model block
steady_state_model;
    r = 1/beta - 1 + delta;
    r_f = 1/beta - 1 + delta;
    P = 1;

    C_a = (r_f - delta) / (1 + T_v) * P;
    I_a = delta;
    YG_a = (w * (1-theta) * r) / P_G;
    YNG_a = ((1 - w) * r_f) / P_NG;
    P = ((1 / alpha_G) * (P_G^(1 - phi)) + (1 / (1 - alpha_G)) * (P_NG^(1-phi)))^(1 / (1-phi));

    % Solve for a (manually using fixed-point iteration)
    a = 4; % Initial guess
    for a = 1:100
        a_new = ((((1-theta) * r) / (A_G * gamma_G * P_G))^(1 / (gamma_G - 1))) / w;
        if abs(a_new - a) < 1e-10
            break;
        end
        a = a_new;
    end

    % Compute remaining variables
    K_G = (YG_a * a)^(1/gamma_G);
    K_NG = ((YNG_a * a) / A_NG)^(1/gamma_NG);
    C = C_a * a;
    I = I_a * a;
    Y_G = YG_a * a;
    Y_NG = YNG_a * a;
    C_G = ((P_G / P)^(-phi)) * (1 / alpha_G) * C;
    C_NG = ((P_NG / P)^(-phi)) * (1 / (1 - alpha_G)) * C;
end;

% Compute the steady state
steady;

steady;

resid;

shocks;

var EPS_G;
stderr 0.01;

end;

%stoch_simul(order=4, irf=20);
 
          