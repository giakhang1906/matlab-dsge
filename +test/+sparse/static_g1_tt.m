function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = test.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 12
    T = [T; NaN(12 - size(T, 1), 1)];
end
T(12) = (-(T(1)*(1-params(8))*params(6)*T(7)))/(y(19)*params(6)*T(7)*y(19)*params(6)*T(7))*getPowerDeriv(T(1)*(1-params(8))/(y(19)*params(6)*T(7)),T(5),1);
end
