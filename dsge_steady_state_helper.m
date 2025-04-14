%[ys, check] = dsge_steady_state_helper(ys_init, M_, options_, oo_)
    % Steady-state helper function for Dynare
    % Inputs:
    %   ys_init: Initial guess for steady-state variables
    %   M_: Model structure
    %   options_: Dynare options
    %   oo_: Results structure
    %
    % Outputs:
    %   ys: Steady-state values for endogenous variables
    %   check: 0 for success, non-zero for failure

    % Step 0: Initialize indicator and set options for numerical solver
    check = 0;
    options = optimset('Display', 'final', 'TolX', 1e-10, 'TolFun', 1e-10);

    % Step 1: Read out parameters
    for ii = 1:M_.param_nbr
        eval([M_.param_names{ii} ' = M_.params(' int2str(ii) ');']);
    end

    % Step 2: Compute steady-state values
    A_G = 1;
    r = 1/beta - 1 + delta;
    r_f = 1/beta - 1 + delta;
    w = 1/3; % Calibrated share of risky asset
    P = 1; % Initial price index (will be updated)

    % Consumption per unit of asset
    C_a = (r_f - delta) / (1 + T_v) * P;
    if C_a <= 0
        check = 1;
        ys = ys_init; % Return initial guess on failure
        return;
    end

    % Investment per unit of asset
    I_a = delta;

    % Green output per unit of asset
    YG_a = (w * (1 - theta) * r) / P_G;
    if YG_a <= 0
        check = 1;
        ys = ys_init;
        return;
    end

    % Non-green output per unit of asset
    YNG_a = ((1 - w) * r_f) / P_NG;
    if YNG_a <= 0
        check = 1;
        ys = ys_init;
        return;
    end

    % Price index
    P = ((1 / alpha_G) * (P_G)^(1 - phi) + (1 / (1 - alpha_G)) * (P_NG)^(1 - phi))^(1 / (1 - phi));
    if any([P_G, P_NG, P] <= 0)
        check = 1;
        ys = ys_init;
        return;
    end

    % Green capital
    K_G = (YG_a * a)^(1 / gamma_G);
    if K_G <= 0
        check = 1;
        ys = ys_init;
        return;
    end

    % Non-green capital
    K_NG = ((YNG_a * a) / A_NG)^(1 / gamma_NG);
    if K_NG <= 0
        check = 1;
        ys = ys_init;
        return;
    end

    % Solve for asset 'a' using fsolve
    a0 = 4; % Initial guess
    [a, fval, exitflag] = fsolve(@(a) a - ((((1 - theta) * r) / (A_G * gamma_G * P_G))^(1 / (gamma_G - 1))) / w, a0, options);
    if exitflag <= 0
        check = 1;
        ys = ys_init;
        return;
    end

    % Compute steady-state variables
    C = C_a * a; % Consumption
    I = I_a * a; % Investment
    Y_G = YG_a * a; % Green output
    Y_NG = YNG_a * a; % Non-green output
    C_G = ((P_G / P)^(-phi)) * (1 / alpha_G) * C; % Green consumption
    C_NG = ((P_NG / P)^(-phi)) * (1 / (1 - alpha_G)) * C; % Non-green consumption

    % Step 3: Assign steady-state values to ys
    ys = zeros(M_.orig_endo_nbr, 1); % Initialize ys
    % Map variables to ys based on the order in M_.endo_names
    endo_names = M_.endo_names;
    for ii = 1:M_.orig_endo_nbr
        var_name = endo_names{ii};
        if exist(var_name, 'var')
            eval(['ys(ii) = ' var_name ';']);
        else
            warning('Variable %s not computed in steady-state helper.', var_name);
            check = 1;
            ys = ys_init;
            return;
        end
    end
%end