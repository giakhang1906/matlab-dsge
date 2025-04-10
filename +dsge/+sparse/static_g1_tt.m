function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = dsge.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 19
    T = [T; NaN(19 - size(T, 1), 1)];
end
T(12) = getPowerDeriv(y(5)*(1-params(8))/(y(14)*y(19)*params(6)),1/(params(6)-1),1);
T(13) = getPowerDeriv(y(6)/(y(15)*params(12)*params(7)),1/(params(7)-1),1);
T(14) = getPowerDeriv(y(14)/y(13),(-params(2)),1);
T(15) = getPowerDeriv(y(15)/y(13),(-params(2)),1);
T(16) = getPowerDeriv(T(5),1/(1-params(3)),1);
T(17) = T(12)*(-(y(5)*(1-params(8))*y(19)*params(6)))/(y(14)*y(19)*params(6)*y(14)*y(19)*params(6));
T(18) = (-(T(13)*(-(y(6)*params(12)*params(7)))/(y(15)*params(12)*params(7)*y(15)*params(12)*params(7))));
T(19) = T(12)*(-(y(5)*(1-params(8))*y(14)*params(6)))/(y(14)*y(19)*params(6)*y(14)*y(19)*params(6));
end
