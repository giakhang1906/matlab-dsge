function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = test.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 14
    T = [T; NaN(14 - size(T, 1), 1)];
end
end
