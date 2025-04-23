function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = experiment.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 14
    T = [T; NaN(14 - size(T, 1), 1)];
end
T(13) = (-(T(10)/T(11)));
T(14) = (-((-(T(5)*params(7)*T(3)))/T(11)));
end
