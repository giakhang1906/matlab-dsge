function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = test_2.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 15
    T = [T; NaN(15 - size(T, 1), 1)];
end
T(15) = (-((-(params(8)*T(3)*T(10)))/(T(14)+params(11)*(T(12)+T(13))-params(8)*T(3)*T(10))));
end
