function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(25, 1);
end
[T_order, T] = dsge.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(19, 1);
    residual(1) = (1) - (T(6)*T(7));
    residual(2) = (y(21)) - (y(41)-(1-params(5))*y(22));
    residual(3) = (y(20)) - ((y(22)*(y(25)+y(23)*(y(24)-y(25)))-y(21))/T(2));
    residual(4) = (y(25)) - (y(24));
    residual(5) = (y(26)) - (y(20)*T(10));
    residual(6) = (y(27)) - (y(20)*T(13));
    residual(7) = (y(32)) - (T(14)^T(15));
    residual(8) = (y(28)) - (y(38)*T(16));
    residual(9) = (y(29)) - (params(12)*y(31)^params(7));
    residual(10) = (y(35)) - (y(33)*y(28)-y(30)*y(24)*(1-params(8)));
    residual(11) = (y(36)) - (y(34)*y(29)-y(25)*y(31));
    residual(12) = (y(33)) - (T(17)*y(24)*(1-params(8))/T(18));
    residual(13) = (y(34)) - (T(17)*y(25)/T(19));
    residual(14) = (y(30)) - (T(22));
    residual(15) = (y(31)) - (T(25));
    residual(16) = (y(22)) - (T(22)/y(23));
    residual(17) = (y(22)) - (T(25)+y(22)*y(23));
    residual(18) = (log(y(38))) - (params(9)*log(y(19))+x(1));
    residual(19) = (y(37)) - (y(20)*params(10)*y(32)+params(11)*(y(35)+y(36))-y(30)*y(24)*params(8));
end
