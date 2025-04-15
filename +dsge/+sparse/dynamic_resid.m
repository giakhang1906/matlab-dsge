function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(15, 1);
end
[T_order, T] = dsge.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(19, 1);
    residual(1) = (y(39)-y(20)) - ((1-params(1)*(1-params(5)))*y(43));
residual(2) = y(20)*(1/params(1)-1)/T(1)+params(5)*(y(21)-y(32))/T(1);
    residual(3) = (y(24)) - (y(25));
    residual(4) = (y(26)-y(20)) - ((-params(3))*(y(33)-y(32)));
    residual(5) = (y(27)-y(20)) - ((-params(3))*(y(34)-y(32)));
    residual(6) = (y(32)) - (y(33)*0.5+y(34)*0.5);
    residual(7) = (y(22)) - (params(5)*y(21)+(1-params(5))*y(3));
    residual(8) = (y(28)) - (y(38)+params(6)*y(11));
    residual(9) = (y(29)) - (params(7)*y(12));
    residual(10) = (y(38)*params(6)*y(35)) - (T(3)*(T(4)*(y(33)+y(28))-y(38)*params(6)*(y(24)-y(11))));
    residual(11) = (y(36)) - (T(5)*(T(4)*(y(34)+y(29))/(params(7)*params(12))-y(25)-y(12)));
    residual(12) = (y(33)+y(28)) - (y(24)+y(11));
    residual(13) = (y(34)+y(29)) - (y(25)+y(12));
    residual(14) = (y(11)) - (T(6)*(y(24)-y(38)-y(33)));
    residual(15) = (y(12)) - (T(7)*(y(25)-y(34)));
    residual(16) = (y(11)) - (y(3)+(steady_state(4)));
    residual(17) = (y(12)) - (y(3)+0.5*(steady_state(4)));
    residual(18) = (y(38)) - (params(9)*y(19)+x(1));
    residual(19) = (y(37)*T(14)) - (T(11)*T(15)+params(11)*(y(35)*T(12)+y(36)*T(13))-T(11)*T(1)*params(8)*(y(24)+y(30)));
end
