function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(12, 1);
end
[T_order, T] = test_2.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(19, 1);
residual(1) = params(12)*(y(39)-y(20))+y(51)-y(32)-params(1)*T(3)*y(44);
    residual(2) = (y(20)) - (T(6)*(T(3)*(y(22)+y(25))-params(4)*y(21)));
    residual(3) = (y(43)) - (y(44));
    residual(4) = (y(26)-y(20)) - ((-params(2))*(y(33)-y(32)));
    residual(5) = (y(27)-y(20)) - ((-params(2))*(y(34)-y(32)));
    residual(6) = (y(32)) - (0.65*y(33)+0.35*y(34));
    residual(7) = (y(22)) - (params(4)*y(21)+(1-params(4))*y(3));
    residual(8) = (y(28)) - (y(38)+params(5)*y(30));
    residual(9) = (y(29)) - (params(6)*y(31));
    residual(10) = (y(35)*(T(9)-(1-params(7))*T(3)*T(7))) - ((y(33)+y(28))*T(9)-(y(30)+y(24))*(1-params(7))*T(3)*T(7));
    residual(11) = (y(36)) - ((y(34)+y(29))*T(10)/(T(10)-T(3)*T(8))-(y(25)+y(31))*T(3)*T(8)/(T(10)-T(3)*T(8)));
    residual(12) = (y(33)+y(28)) - (y(30)+y(24));
    residual(13) = (y(34)+y(29)) - (y(25)+y(31));
    residual(14) = (y(30)) - (T(4)*(y(24)-y(38)-y(33)));
    residual(15) = (y(31)) - (T(5)*(y(25)-y(34)));
    residual(16) = (y(30)) - (y(22)+y(23));
    residual(17) = (y(31)) - (y(22)+y(23)*0.5);
    residual(18) = (y(38)) - (params(8)*y(19)+x(1));
    residual(19) = (y(37)) - (((y(20)+y(32))*T(11)+params(10)*(y(35)*(T(9)-(1-params(7))*T(3)*T(7))+y(36)*(T(10)-T(3)*T(8)))-(y(30)+y(24))*params(7)*T(3)*T(7))/T(12));
end
