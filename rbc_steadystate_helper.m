function [ys, params, check] = rbc_steadystate_helper(ys, exo, M_, options_)

% Inputs: 
%   - ys        [vector] vector of initial values for the steady state of the endogenous variables
%   - exo       [vector] vector of values for the exogenous variables
%   - M_        [structure] Dynare model structure
%   - options   [structure] Dynare options structure
%
% Output: 
%   - ys        [vector] vector of steady state values for the the endogenous variables
%   - params    [vector] vector of parameter values
%   - check     [scalar] 0 if steady state computation worked and to
%                        1 of not (allows to impose restrictions on parameters)

%% Step 0: initialize indicator and set options for numerical solver
check = 0;
options = optimset('Display','Final','TolX',1e-10,'TolFun',1e-10);

%% Step 1: read out parameters to access them with their name
for ii = 1:M_.param_nbr
  eval([ M_.param_names{ii} ' = M_.params(' int2str(ii) ');']);
end

%% Step 2: Enter model equations
A_G = 1;
r = 1/beta - 1 + delta; 
%r = 0.5;
%r_f = 0.5;
r_f = 1/beta - 1 + delta; 
w = 1/3; %calibrated share of risky asset
P = 1; 

C = a * ((r_f - delta) / (1 + T_v));

a = I / delta;

I = C * (delta * (1 + T_v)) / (r_f - delta);

Y_G = (((r_f - delta) / (1 + T_v) + delta) - (Y_NG / a)) * a; 

P_G = (a * w * (1 - theta) * r) / Y_G; 

Y_NG = ((1 - w) * r_f * a) / P_NG; 

P_NG = ((1 - alpha_G) * (1 - (1/alpha_G) * (P_G)^(1-phi)))^(1 / (1 - phi));

C_G = ((P_G / P)^(-psi)) * (1/alpha_G) * C; 

C_NG = ((P_NG / P)^(-psi)) * (1/(1 - alpha_G)) * C;

%lambda = C^(-psi) / ((1 + T_v) * P);

%K_G = (((1 - theta) * r)/ (A_G * gamma_G * P_G))^(1 / (gamma_G - 1));

%K_NG = (r_f / (A_NG * gamma_NG * P_NG))^(1 / (gamma_NG - 1));

%pi_G = P_G * Y_G - (1-theta) * r * K_G;

%pi_NG = P_NG * Y_NG - r_f * K_NG;

%D = T_v * P * C + T_c * (pi_G + pi_NG) - theta * r * K_G;

K_NG = ((r_f) / (A_NG * gamma_NG * 1))^(1 / (gamma_NG - 1));
Y_NG = A_NG * (K_NG)^gamma_NG;
P_NG = (phi / (phi - 1)) * (r_f / (gamma_NG * A_NG^(1/gamma_NG) * K_NG^(1 - 1/gamma_NG)));
K_G = (((1 - theta) * r) / (A_G * gamma_G * 1))^(1 / (gamma_G - 1));
Y_G = A_G * (K_G)^gamma_G;
P_G = (phi / (phi - 1)) * (((1 - theta) * r) / (gamma_G * (Y_G / K_G)));
C_G = ((P_G / P)^(-psi)) * (1/alpha_G) * C;
C_NG = ((P_NG / P)^(-psi)) * (1/(1 - alpha_G)) * C;
pi_G = P_G * Y_G - (1 - theta) * r * K_G;
pi_NG = P_NG * Y_NG - r_f * K_NG;
D = T_v * P * C + T_c * (pi_G + pi_NG) - theta * r * K_G;

end; 