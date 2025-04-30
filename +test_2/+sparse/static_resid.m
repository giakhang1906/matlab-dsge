function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(12, 1);
end
[T_order, T] = test_2.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(19, 1);
residual(1) = (-(params(1)*T(3)*y(6)));
    residual(2) = (y(1)) - (T(12)*(T(3)*(y(6)+y(3))-params(4)*y(2)));
    residual(3) = (y(5)) - (y(6));
    residual(4) = (y(7)-y(1)) - ((-params(2))*(y(14)-y(13)));
    residual(5) = (y(8)-y(1)) - ((-params(2))*(y(15)-y(13)));
    residual(6) = (y(13)) - (0.65*y(14)+0.35*y(15));
    residual(7) = (y(3)) - (params(4)*y(2)+y(3)*(1-params(4)));
    residual(8) = (y(9)) - (y(19)+params(5)*y(11));
    residual(9) = (y(10)) - (params(6)*y(12));
    residual(10) = ((T(8)-(1-params(7))*T(3)*T(5))*y(16)) - (T(8)*(y(14)+y(9))-(1-params(7))*T(3)*T(5)*(y(5)+y(11)));
    residual(11) = (y(17)) - (T(9)*(y(15)+y(10))/(T(9)-T(3)*T(7))-T(3)*T(7)*(y(6)+y(12))/(T(9)-T(3)*T(7)));
    residual(12) = (y(14)+y(9)) - (y(5)+y(11));
    residual(13) = (y(15)+y(10)) - (y(6)+y(12));
    residual(14) = (y(11)) - (T(4)*(y(5)-y(19)-y(14)));
    residual(15) = (y(12)) - (T(6)*(y(6)-y(15)));
    residual(16) = (T(4)*(y(5)-y(19)-y(14))) - (y(3)+y(4));
    residual(17) = (T(6)*(y(6)-y(15))) - (y(3)+y(4)*0.5);
    residual(18) = (y(19)) - (y(19)*params(8)+x(1));
    residual(19) = (y(18)) - ((T(10)*(y(1)+y(13))+params(10)*((T(8)-(1-params(7))*T(3)*T(5))*y(16)+(T(9)-T(3)*T(7))*y(17))-T(5)*params(7)*T(3)*(y(5)+y(11)))/T(11));
end
