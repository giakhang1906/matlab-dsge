function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 14
    T = [T; NaN(14 - size(T, 1), 1)];
end
T(1) = (0.5/params(4))^(1/(1-params(3)));
T(2) = (0.5/(1-params(4)))^(1/(1-params(3)));
T(3) = 1/params(1)-1+params(5);
T(4) = 1/(params(6)-1);
T(5) = 1/(params(7)-1);
T(6) = (1+params(10))/(1/params(1)-1);
T(7) = 1/(1/params(6)-1);
T(8) = params(3)/(params(3)-1);
T(9) = 1/(1/params(7)-1);
T(10) = ((1-params(8))*T(3)/(T(1)*params(6)))^T(4);
T(11) = (T(3)/(T(2)*params(12)*params(7)))^T(5);
T(12) = T(1)*(T(10))^params(6)-(1-params(8))*T(3)*T(10);
T(13) = T(2)*params(12)*(T(11))^params(7)-T(3)*T(11);
T(14) = params(10)*(1/params(1)-1)/(1+params(10))*0.3333333333333333*T(10);
end
