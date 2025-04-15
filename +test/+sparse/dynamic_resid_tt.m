function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 11
    T = [T; NaN(11 - size(T, 1), 1)];
end
T(1) = params(5)+1/params(1)-1;
T(2) = 1/(1/params(6)-1);
T(3) = params(3)/(params(3)-1);
T(4) = 1/(1/params(7)-1);
T(5) = 1/(params(6)-1);
T(6) = 1/(params(7)-1);
T(7) = (0.5/params(4))^(1/(1-params(3)));
T(8) = (T(1)*(1-params(8))/(y(38)*params(6)*T(7)))^T(5);
T(9) = (1/params(6)-1)*T(1)*(1-params(8))*T(8);
T(10) = (1/params(7)-1)*T(1)*(T(1)/(params(7)*params(12)*(0.5/(1-params(4)))^(1/(1-params(3)))))^T(6);
T(11) = 3*params(10)*(y(25)-params(5))/(1+params(10))*T(8)+params(11)*(T(9)+T(10))-T(8)*T(1)*params(8);
end
