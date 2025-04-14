function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = dsge.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 24
    T = [T; NaN(24 - size(T, 1), 1)];
end
T(17) = (-1)/(y(23)*y(23));
T(18) = T(10)*T(15)*T(17);
T(19) = T(10)*T(12)*params(10)*1/(1+params(10));
T(20) = (-(T(1)*(1-params(8))*params(6)*T(2)))/(y(38)*params(6)*T(2)*y(38)*params(6)*T(2));
T(21) = getPowerDeriv(T(3),T(4),1);
T(22) = T(20)*T(21);
T(23) = T(1)*(1-params(8))*T(22);
T(24) = (-(params(3)*(y(33)+y(28))*params(6)*(params(3)-1)))/(y(38)*params(6)*(params(3)-1)*y(38)*params(6)*(params(3)-1));
end
