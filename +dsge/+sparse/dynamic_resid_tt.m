function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 16
    T = [T; NaN(16 - size(T, 1), 1)];
end
T(1) = params(5)+1/params(1)-1;
T(2) = (0.5/params(4))^(1/(1-params(3)));
T(3) = T(1)*(1-params(8))/(y(38)*params(6)*T(2));
T(4) = 1/(params(6)-1);
T(5) = T(3)^T(4);
T(6) = T(1)*(1-params(8))*T(5);
T(7) = y(24)+y(30)+params(3)*(y(33)+y(28))/(y(38)*params(6)*(params(3)-1));
T(8) = (0.5/(1-params(4)))^(1/(1-params(3)));
T(9) = 1/(params(7)-1);
T(10) = (T(1)/(params(7)*params(12)*T(8)))^T(9);
T(11) = params(10)*(y(20)+y(32))*(y(25)-params(5))/(1+params(10));
T(12) = 1/y(23);
T(13) = (T(10))^params(6);
T(14) = (T(10))^params(7);
T(15) = params(10)*(y(25)-params(5))/(1+params(10));
T(16) = T(10)*T(12)*T(15);
end
