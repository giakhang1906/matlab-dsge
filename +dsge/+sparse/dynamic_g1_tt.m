function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = dsge.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 20
    T = [T; NaN(20 - size(T, 1), 1)];
end
T(16) = T(11)*3*params(10)*1/(1+params(10));
T(17) = (-(T(1)*(1-params(8))*params(6)*T(9)))/(y(38)*params(6)*T(9)*y(38)*params(6)*T(9));
T(18) = getPowerDeriv(T(10),T(6),1);
T(19) = T(17)*T(18);
T(20) = T(8)*T(19)+params(11)*T(2)*T(1)*(1-params(8))*T(19)-T(1)*params(8)*T(19);
end
