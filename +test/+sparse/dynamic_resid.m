function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(14, 1);
end
[T_order, T] = test.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(19, 1);
    residual(1) = (y(20)-y(1)) - ((1-params(1)*(1-params(5)))*y(24));
    residual(2) = (y(1)) - (T(6)*(T(3)*(y(3)+y(6))-params(5)*y(2)));
    residual(3) = (y(5)) - (y(6));
    residual(4) = (y(7)-y(1)) - ((-params(3))*(y(14)-y(13)));
    residual(5) = (y(8)-y(1)) - ((-params(3))*(y(15)-y(13)));
    residual(6) = (y(13)) - (0.5*y(14)+0.5*y(15));
    residual(7) = (y(22)) - (params(5)*y(21)+(1-params(5))*y(3));
    residual(8) = (y(28)) - (y(38)+params(6)*y(11));
    residual(9) = (y(29)) - (params(7)*y(12));
    residual(10) = (params(6)*y(35)) - (T(7)*(T(8)*(y(28)+y(33))-params(6)*(y(24)-y(11))));
    residual(11) = (y(36)) - (T(9)*(T(8)*(y(29)+y(34))/(params(12)*params(7))-y(25)-y(12)));
    residual(12) = (y(28)+y(33)) - (y(24)+y(11));
    residual(13) = (y(29)+y(34)) - (y(12)+y(25));
    residual(14) = (y(11)) - (T(4)*(y(24)-y(38)-y(33)));
    residual(15) = (y(12)) - (T(5)*(y(25)-y(34)));
    residual(16) = (y(11)) - (y(3)+y(23));
    residual(17) = (y(12)) - (y(3)+0.5*y(23));
    residual(18) = (y(38)) - (params(9)*y(19)+x(1));
    residual(19) = (y(37)) - (((y(20)+y(32))*T(14)+params(11)*(y(35)*T(12)+y(36)*T(13))-(y(24)+y(11))*params(8)*T(3)*T(10))/(T(14)+params(11)*(T(12)+T(13))-params(8)*T(3)*T(10)));
end
