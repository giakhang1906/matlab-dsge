% function [ys,params,check] = dsge_steadystate_helper(ys,exo,M_,options_)
% 
% % Inputs: 
% %   - ys        [vector] vector of initial values for the steady state of the endogenous variables
% %   - exo       [vector] vector of values for the exogenous variables
% %   - M_        [structure] Dynare model structure
% %   - options   [structure] Dynare options structure
% %
% % Output: 
% %   - ys        [vector] vector of steady state values for the the endogenous variables
% %   - params    [vector] vector of parameter values
% %   - check     [scalar] 0 if steady state computation worked and to
% %                        1 of not (allows to impose restrictions on parameters)
% 
% %% Step 0: initialize indicator and set options for numerical solver
% check = 0;
% options = optimset('Display','Final','TolX',1e-10,'TolFun',1e-10);
% 
% %% Step 1: read out parameters to access them with their name
% for ii = 1:M_.param_nbr
%   eval([ M_.param_names{ii} ' = M_.params(' int2str(ii) ');']);
% end
% 
% %% Step 2: Enter model equations
% A_G = 1;
% r = 1/beta - 1 + delta; 
% r_f = 1/beta - 1 + delta; 
% w = 1/3; %calibrated share of risky asset
% 
% P = 1; 
% 
% C = a * ((r_f - delta) / (1 + T_v));
% if C <=0
%     check = 1; %set failure indicator 
%     return; % return without updating steady states
% end
% 
% a = I / delta;
% if a <=0
%     check = 1; %set failure indicator 
%     return; % return without updating steady states
% end
% 
% I = C * (delta * (1 + T_v)) / (r_f - delta);
% if I <=0
%     check = 1; %set failure indicator 
%     return; % return without updating steady states
% end
% 
% Y_G = (((r_f - delta) / (1 + T_v) + delta) - (Y_NG / a)) * a;
% if Y_G <=0
%     check = 1; %set failure indicator 
%     return; % return without updating steady states
% end
% 
% P_G = (a * w * (1 - theta) * r) / Y_G; 
% if P_G <=0
%     check = 1; %set failure indicator 
%     return; % return without updating steady states
% end
% 
% Y_NG = ((1 - w) * r_f * a) / P_NG; 
% if Y_NG <=0
%     check = 1; %set failure indicator 
%     return; % return without updating steady states
% end
% 
% P_NG = ((1 - alpha_G) * (1 - (1/alpha_G) * (P_G)^(1-phi)))^(1 / (1 - phi));
% if P_NG <=0
%     check = 1; %set failure indicator 
%     return; % return without updating steady states
% end
% 
% C_G = ((P_G / P)^(-psi)) * (1/alpha_G) * C; 
% if C_G <=0
%     check = 1; %set failure indicator 
%     return; % return without updating steady states
% end
% 
% C_NG = ((P_NG / P)^(-psi)) * (1/(1 - alpha_G)) * C;
% if C_NG <=0
%     check = 1; %set failure indicator 
%     return; % return without updating steady states
% end
% 
% K_NG = ((r_f) / (A_NG * gamma_NG * 1))^(1 / (gamma_NG - 1));
% if K_NG <=0
%     check = 1; %set failure indicator 
%     return; % return without updating steady states
% end
% 
% K_G = (((1 - theta) * r) / (A_G * gamma_G * 1))^(1 / (gamma_G - 1));
% if K_G <=0
%     check = 1; %set failure indicator 
%     return; % return without updating steady states
% end
% 
% pi_G = P_G * Y_G - (1 - theta) * r * K_G;
% pi_NG = P_NG * Y_NG - r_f * K_NG;
% D = T_v * P * C + T_c * (pi_G + pi_NG) - theta * r * K_G;
% 
% end
% 
% %% Step 3: Update parameters and variables
% params=NaN(M_.param_nbr,1);
% for iter = 1:M_.param_nbr %update parameters set in the file
%   eval([ 'params(' num2str(iter) ') = ' M_.param_names{iter} ';' ])
% end
% 
% for ii = 1:M_.orig_endo_nbr %auxiliary variables are set automatically
%   eval(['ys(' int2str(ii) ') = ' M_.endo_names{ii} ';']);
% end

function [ys, params, check] = dsge_steadystate_helper(ys, exo, M_, options_)
    check = 0;
    options = optimset('Display', 'Final', 'TolX', 1e-10, 'TolFun', 1e-10);

    % Load parameters
    for ii = 1:M_.param_nbr
        eval([M_.param_names{ii} ' = M_.params(' int2str(ii) ');']);
    end

    % Initial steady-state equations
    A_G = 1;
    r = 1/beta - 1 + delta; % 0.1361 with beta = 0.9, delta = 0.025
    r_f = r;

    % Green sector (sequential initial guess)
    P_G = 1;
    K_G = (((1 - theta) * r) / (A_G * gamma_G * P_G))^(1 / (gamma_G - 1));
    Y_G = A_G * K_G^gamma_G;
    P_G = ((1 - theta) * r) / (gamma_G * (Y_G / K_G));

    % Non-green sector (sequential initial guess)
    P_NG = 1;
    K_NG = (r_f / (A_NG * gamma_NG * P_NG))^(1 / (gamma_NG - 1));
    Y_NG = A_NG * K_NG^gamma_NG;
    P_NG = r_f / (gamma_NG * (Y_NG / K_NG));

    % Initial guesses for fsolve
    a_guess = K_G + K_NG; % 16.789
    w_guess = K_G / a_guess; % 0.614
    P_guess = 1.586; % From previous calculation
    C_guess = (a_guess * r_f - delta * a_guess) / ((1 + T_v) * P_guess); % 0.904

    % Solve simultaneous equations
    x0 = [a_guess, w_guess, C_guess, P_guess];
    [x, fval, exitflag] = fsolve(@(x) steady_state_residuals(x, r, r_f, delta, T_v, alpha_G, phi, psi, theta, gamma_G, gamma_NG, A_G, A_NG), x0, options);
    
    if exitflag <= 0
        check = 1; return;
    end

    % Extract solutions
    a = x(1);
    w = x(2);
    C = x(3);
    P = x(4);

    % Recalculate dependent variables
    I = delta * a;
    K_G = w * a;
    K_NG = (1 - w) * a;
    Y_G = A_G * K_G^gamma_G;
    Y_NG = A_NG * K_NG^gamma_NG;
    P_G = ((1 - theta) * r) / (gamma_G * (Y_G / K_G));
    P_NG = r_f / (gamma_NG * (Y_NG / K_NG));

    % Check positivity
    if any([C, I, a, K_G, K_NG, Y_G, Y_NG, P_G, P_NG, w] <= 0)
        check = 1; return;
    end

    % Consumption shares
    C_G = ((P_G / P)^(-psi)) * (1 / alpha_G) * C;
    C_NG = ((P_NG / P)^(-psi)) * (1 / (1 - alpha_G)) * C;

    % Profits and transfers
    pi_G = P_G * Y_G - (1 - theta) * r * K_G;
    pi_NG = P_NG * Y_NG - r_f * K_NG;
    D = T_v * P * C + T_c * (pi_G + pi_NG) - theta * r * K_G;

    % Debug output
    disp(['a = ', num2str(a), ', w = ', num2str(w), ', C = ', num2str(C), ', P = ', num2str(P)]);
    disp(['K_G = ', num2str(K_G), ', K_NG = ', num2str(K_NG), ', P_G = ', num2str(P_G), ', P_NG = ', num2str(P_NG)]);

    % Update outputs
    params = NaN(M_.param_nbr, 1);
    for iter = 1:M_.param_nbr
        eval(['params(' num2str(iter) ') = ' M_.param_names{iter} ';']);
    end

    for ii = 1:M_.orig_endo_nbr
        eval(['ys(' int2str(ii) ') = ' M_.endo_names{ii} ';']);
    end
end

% Residual function for fsolve
function residuals = steady_state_residuals(x, r, r_f, delta, T_v, alpha_G, phi, psi, theta, gamma_G, gamma_NG, A_G, A_NG)
    a = x(1);
    w = x(2);
    C = x(3);
    P = x(4);

    % Dependent variables
    I = delta * a;
    K_G = w * a;
    K_NG = (1 - w) * a;
    Y_G = A_G * K_G^gamma_G;
    Y_NG = A_NG * K_NG^gamma_NG;
    P_G = ((1 - theta) * r) / (gamma_G * (Y_G / K_G));
    P_NG = r_f / (gamma_NG * (Y_NG / K_NG));

    % Residuals
    res1 = a - (K_G + K_NG); % Total capital consistency
    res2 = I - delta * a; % Investment
    res3 = C - (a * r_f - I) / ((1 + T_v) * P); % Budget constraint
    res4 = P - ((1 / alpha_G) * (P_G^(1 - phi)) + (1 / (1 - alpha_G)) * (P_NG^(1 - phi)))^(1 / (1 - phi)); % Price index

    residuals = [res1, res2, res3, res4];
end