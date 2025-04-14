function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 12
    T = [T; NaN(12 - size(T, 1), 1)];
end
T(1) = params(5)+1/params(1)-1;
T(2) = (0.5/params(4))^(1/(1-params(3)));
T(3) = 1/(params(6)-1);
T(4) = (T(1)*(1-params(8))/(y(19)*params(6)*T(2)))^T(3);
T(5) = T(1)*(1-params(8))*T(4);
T(6) = (0.5/(1-params(4)))^(1/(1-params(3)));
T(7) = 1/(params(7)-1);
T(8) = (T(1)/(params(7)*params(12)*T(6)))^T(7);
T(9) = 1/y(4);
T(10) = (T(8))^params(6);
T(11) = (T(8))^params(7);
T(12) = T(8)*T(9)*params(10)*(y(6)-params(5))/(1+params(10));
end
