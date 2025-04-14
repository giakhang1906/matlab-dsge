function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = dsge.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 14
    T = [T; NaN(14 - size(T, 1), 1)];
end
T(13) = (-(T(1)*(1-params(8))*params(6)*T(2)))/(y(19)*params(6)*T(2)*y(19)*params(6)*T(2))*getPowerDeriv(T(1)*(1-params(8))/(y(19)*params(6)*T(2)),T(3),1);
T(14) = T(1)*(1-params(8))*T(13);
end
