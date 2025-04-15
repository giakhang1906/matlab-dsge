function [T_order, T] = dynamic_g2_tt(y, x, params, steady_state, T_order, T)
if T_order >= 2
    return
end
[T_order, T] = dsge.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
T_order = 2;
if size(T, 1) < 21
    T = [T; NaN(21 - size(T, 1), 1)];
end
T(21) = T(18)*(-((-(T(1)*(1-params(8))*params(6)*T(9)))*(y(38)*params(6)*T(9)*params(6)*T(9)+y(38)*params(6)*T(9)*params(6)*T(9))))/(y(38)*params(6)*T(9)*y(38)*params(6)*T(9)*y(38)*params(6)*T(9)*y(38)*params(6)*T(9))+T(17)*T(17)*getPowerDeriv(T(10),T(6),2);
end
