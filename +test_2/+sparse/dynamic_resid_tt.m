function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 12
    T = [T; NaN(12 - size(T, 1), 1)];
end
T(1) = (0.5/params(3))^(1/(1-params(2)));
T(2) = (0.5/(1-params(3)))^(1/(1-params(2)));
T(3) = 1/params(1)-1+params(4);
T(4) = 1/(params(5)-1);
T(5) = 1/(params(6)-1);
T(6) = (1+params(9))/(1/params(1)-1);
T(7) = ((1-params(7))*T(3)/(T(1)*params(5)))^T(4);
T(8) = (T(3)/(T(2)*params(11)*params(6)))^T(5);
T(9) = T(1)*(T(7))^params(5);
T(10) = T(2)*params(11)*(T(8))^params(6);
T(11) = params(9)*(1/params(1)-1)/(1+params(9))*0.3333333333333333*T(7);
T(12) = T(11)+params(10)*(T(9)-(1-params(7))*T(3)*T(7)+T(10)-T(3)*T(8))-params(7)*T(3)*T(7);
end
