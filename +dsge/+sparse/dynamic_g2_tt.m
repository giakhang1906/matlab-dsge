function [T_order, T] = dynamic_g2_tt(y, x, params, steady_state, T_order, T)
if T_order >= 2
    return
end
[T_order, T] = dsge.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
T_order = 2;
if size(T, 1) < 27
    T = [T; NaN(27 - size(T, 1), 1)];
end
T(25) = (-(params(3)/(y(38)*params(6)*(params(3)-1))*T(23)+T(6)*(-(params(3)*params(6)*(params(3)-1)))/(y(38)*params(6)*(params(3)-1)*y(38)*params(6)*(params(3)-1))));
T(26) = T(21)*(-((-(T(1)*(1-params(8))*params(6)*T(2)))*(y(38)*params(6)*T(2)*params(6)*T(2)+y(38)*params(6)*T(2)*params(6)*T(2))))/(y(38)*params(6)*T(2)*y(38)*params(6)*T(2)*y(38)*params(6)*T(2)*y(38)*params(6)*T(2))+T(20)*T(20)*getPowerDeriv(T(3),T(4),2);
T(27) = T(1)*(1-params(8))*T(26);
end
