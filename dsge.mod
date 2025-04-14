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

%%Euler equation
C(+1) - C = (1 - beta*(1 - delta)) * r(+1); 

%% Budget Constraint 
((C * ((1/beta) - 1)) / ((1/beta) - 1 + delta)) + ((delta * (I - P)) / ((1/beta) - 1 + delta)); 

%% Rate of return 
r = r_f; 

% Consumption green 
C_G - C = -phi * (P_G - P); 

% Consumption non-green 
C_NG - C = -phi * (P_NG - P); 

%% Aggregate price 
P = 1/2 * P_G + 1/2 * P_NG; 

% Law of Motion for Capital
a(+1) = delta * I + (1-delta) * a; 

% Production Function Green 
Y_G = A_G + gamma_G * K_G; 

% Production Function Non-green 
Y_NG = gamma_NG * K_NG; 

% Profit Green Firm
pi_G = (1 - theta) * ((1/beta) - 1 + delta) * 
((((1 - theta) * ((1/beta) - 1 + delta))/ (A_G * gamma_G * (0.5 / alpha_G)^(1/(1-phi))))^(1 / (gamma_G - 1))) * 
(r + K_G + (phi * (P_G + Y_G)) / ((phi - 1) * gamma_G * A_G));
%(r + K_G + ((phi * (P_G + Y_G)) / ((phi-1) * gamma_G * A_G))); 

% Profit Non-green Firm
pi_NG = ((1/beta) - 1 + delta) * 
((((1/beta) - 1 + delta)/ (A_NG * gamma_NG * ((0.5) / (1 - alpha_G))^(1/(1-phi))))^(1 / (gamma_NG - 1))) * 
(r_f + K_NG + (phi * (P_NG + Y_NG)) / ((phi - 1) * gamma_NG * A_NG));
%(r_f + K_NG + ((phi * (P_NG + Y_NG)) / ((phi-1) * gamma_NG * A_NG)));

% Price Green 
P_G + Y_G = K_G + r; 

% Price non-green
P_NG + Y_NG = K_NG + r_f; 

% MPK = Rate of return green 
K_G = (1 / (gamma_G - 1)) * (r - A_G - P_G); 

%MPK = Rate of return non-green
K_NG = (1 / (gamma_NG - 1)) * (r_f - P_NG);

% Capital supply = Capital demand 
K_G = w + a; 

% Capital supply = capital demand 
K_NG = 1/2 * w + a; 

% Productivity
A_G = rho * A_G(-1) + EPS_G;

% Government Deficit 
T_v * (P + C) * ((r_f - delta) / (1 + T_v)) * (1/w) * 
((((1/beta) - 1 + delta)/ (A_NG * gamma_NG * ((0.5) / (1 - alpha_G))^(1/(1-phi))))^(1 / (gamma_NG - 1))) +
T_c * (pi_G * (((((1/beta) - 1 + delta)/ (A_NG * gamma_NG * ((0.5) / (1 - alpha_G))^(1/(1-phi))))^(1 / (gamma_NG - 1)))^gamma_G) * 
(0.5 / alpha_G)^(1/(1-phi)) - (1-theta) * ((1/beta) - 1 + delta) * 
((((1 - theta) * ((1/beta) - 1 + delta))/ (A_G * gamma_G * (0.5 / alpha_G)^(1/(1-phi))))^(1 / (gamma_G - 1)))
 + pi_NG * A_NG * ((((1/beta) - 1 + delta)/ (A_NG * gamma_NG * ((0.5) / (1 - alpha_G))^(1/(1-phi))))^(1 / (gamma_NG - 1)))^(gamma_NG) * 
((0.5) / (1 - alpha_G))^(1/(1-phi)) - ((1/beta) - 1 + delta) * 
((((1/beta) - 1 + delta)/ (A_NG * gamma_NG * ((0.5) / (1 - alpha_G))^(1/(1-phi))))^(1 / (gamma_NG - 1)))) = theta * (r + K_G) * ((1/beta) - 1 + delta) * 
((((1 - theta) * ((1/beta) - 1 + delta))/ (A_G * gamma_G * (0.5 / alpha_G)^(1/(1-phi))))^(1 / (gamma_G - 1))) + 
D * 
(T_v * ((r_f - delta) / (1 + T_v)) * (1/w) * 
((((1/beta) - 1 + delta)/ (A_NG * gamma_NG * ((0.5) / (1 - alpha_G))^(1/(1-phi))))^(1 / (gamma_NG - 1))) + 
T_c * ((((((1/beta) - 1 + delta)/ (A_NG * gamma_NG * ((0.5) / (1 - alpha_G))^(1/(1-phi))))^(1 / (gamma_NG - 1)))^gamma_G) * 
(0.5 / alpha_G)^(1/(1-phi)) - (1-theta) * ((1/beta) - 1 + delta) * 
((((1 - theta) * ((1/beta) - 1 + delta))/ (A_G * gamma_G * (0.5 / alpha_G)^(1/(1-phi))))^(1 / (gamma_G - 1))) + 
A_NG * ((((1/beta) - 1 + delta)/ (A_NG * gamma_NG * ((0.5) / (1 - alpha_G))^(1/(1-phi))))^(1 / (gamma_NG - 1)))^(gamma_NG) * 
((0.5) / (1 - alpha_G))^(1/(1-phi)) - ((1/beta) - 1 + delta) * 
((((1/beta) - 1 + delta)/ (A_NG * gamma_NG * ((0.5) / (1 - alpha_G))^(1/(1-phi))))^(1 / (gamma_NG - 1)))) - theta * ((1/beta) - 1 + delta) * 
((((1 - theta) * ((1/beta) - 1 + delta))/ (A_G * gamma_G * (0.5 / alpha_G)^(1/(1-phi))))^(1 / (gamma_G - 1))));

end;

initval; 
w = 1/3; 
A_G = 1; 
P = 1; 
end; 

steady;
resid;

shocks;

var EPS_G;
stderr 0.01;

end;

stoch_simul;

          