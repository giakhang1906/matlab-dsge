function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 12
    T = [T; NaN(12 - size(T, 1), 1)];
end
T(1) = (0.65/params(3))^(1/(1-params(2)));
T(2) = (0.35/(1-params(3)))^(1/(1-params(2)));
T(3) = 1/params(1)-1+params(4);
T(4) = 1/(params(5)-1);
T(5) = ((1-params(7))*T(3)/(T(1)*params(5)))^T(4);
T(6) = 1/(params(6)-1);
T(7) = (T(3)/(T(2)*params(11)*params(6)))^T(6);
T(8) = T(1)*(T(5))^params(5);
T(9) = T(2)*params(11)*(T(7))^params(6);
T(10) = params(9)*T(5)*(1/params(1)-1)/(1+params(9))*0.3333333333333333;
T(11) = T(10)+params(10)*(T(8)-(1-params(7))*T(3)*T(5)+T(9)-T(3)*T(7))-T(5)*params(7)*T(3);
T(12) = (1+params(9))/(1/params(1)-1);
end
