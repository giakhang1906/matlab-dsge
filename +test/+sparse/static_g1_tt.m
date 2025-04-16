function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = test.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 15
    T = [T; NaN(15 - size(T, 1), 1)];
end
T(15) = (-((-(T(5)*params(8)*T(3)))/(T(10)+params(11)*(T(8)+T(9))-T(5)*params(8)*T(3))));
end
