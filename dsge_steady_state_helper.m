function [ys,params,check] = dsge_steady_state_helper(ys,exo,M_,options_)
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
 %% Step 0: initialize indicator and set options for numerical solver
check = 0;
options = optimset('Display','Final','TolX',1e-10,'TolFun',1e-10);
% 
% Step 1: read out parameters to access them with their name
  for ii = 1:M_.param_nbr
    eval([ M_.param_names{ii} ' = M_.params(' int2str(ii) ');']);
  end

% Step 2: Enter model equations
A_G = 1;
r = 1/beta - 1 + delta; 
r_f = 1/beta - 1 + delta; 
w = 1/3; %calibrated share of risky asset
P = 1; 

C_a = (r_f - delta) / (1 + T_v) * P;

if C_a <= 0
    check = 1; %set failure indicator 
    return; 
end

I_a = delta; 

YG_a = (w * (1-theta) * r) / P_G; 

if YG_a <= 0
    check = 1; 
    return;
end

YNG_a = ((1 - w) * r_f)/ P_NG;

if YNG_a <= 0
    check = 1; 
    return;
end

P = ((1 / alpha_G) * ((P_G)^(1 - phi)) + (1 / (1 - alpha_G)) * ((P_NG)^(1-phi)))^(1 / (1-phi));

if any([P_G, P_NG] <= 0)
    check = 1;
    return
end

K_G = (YG_a * a)^(1/gamma_G); 

if K_G <= 0
    check = 1;
    return 
end

K_NG = ((YNG_a * a) / A_NG)^(1/ gamma_NG) ;

if K_NG <= 0
    check = 1;
    return
end

% Asset fsolve
a0 = 4;
[a,~,exitflag] = fsolve(@(a) a - ((((1-theta) * r)/ (A_G * gamma_G * P_G))^(1 / (gamma_G - 1))) / w, a0,options);
    if exitflag <= 0
        check = 1; % set failure indicator
        return     % return without updating steady states
    end

C = C_a * a; %Consumption
I = I_a * a; %Investment 
Y_G = YG_a * a; %Green Output
Y_NG = YNG_a * a; %Non-green Output 
C_G = ((P_G / P)^(-phi)) * (1 / alpha_G) * C; %Green Consumption
C_NG = ((P_NG / P)^(-phi)) * (1 / (1 - alpha_G)) * C; %Non-green Consumption

 
% Step 3: Update parameters and variables
  params=NaN(M_.param_nbr,1);
  for iter = 1:M_.param_nbr %update parameters set in the file
    eval([ 'params(' num2str(iter) ') = ' M_.param_names{iter} ';' ])
  end
% 
  for ii = 1:M_.orig_endo_nbr %auxiliary variables are set automatically
    eval(['ys(' int2str(ii) ') = ' M_.endo_names{ii} ';']);
  end