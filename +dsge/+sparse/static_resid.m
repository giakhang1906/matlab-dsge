function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(12, 1);
end
[T_order, T] = dsge.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(19, 1);
    residual(1) = (0) - ((1-params(1)*(1-params(5)))*y(5));
residual(2) = y(1)*(1/params(1)-1)/T(1)+params(5)*(y(2)-y(13))/T(1);
    residual(3) = (y(5)) - (y(6));
    residual(4) = (y(7)-y(1)) - ((-params(3))*(y(14)-y(13)));
    residual(5) = (y(8)-y(1)) - ((-params(3))*(y(15)-y(13)));
    residual(6) = (y(13)) - (y(14)*0.5+y(15)*0.5);
    residual(7) = (y(3)) - (params(5)*y(2)+(1-params(5))*y(3));
    residual(8) = (y(9)) - (y(19)+params(6)*y(11));
    residual(9) = (y(10)) - (params(7)*y(12));
    residual(10) = (y(16)) - (T(5)*(y(5)+y(11)+params(3)*(y(14)+y(9))/(y(19)*params(6)*(params(3)-1))));
    residual(11) = (y(17)) - (T(1)*T(8)*(y(6)+y(12)+params(3)*(y(15)+y(10))/(params(12)*params(7)*(params(3)-1))));
    residual(12) = (y(14)+y(9)) - (y(5)+y(11));
    residual(13) = (y(15)+y(10)) - (y(6)+y(12));
    residual(14) = (y(11)) - (T(3)*(y(5)-y(19)-y(14)));
    residual(15) = (y(12)) - (T(7)*(y(6)-y(15)));
    residual(16) = (y(11)) - (y(3)+y(4));
    residual(17) = (y(12)) - (y(3)+0.5*y(4));
    residual(18) = (y(19)) - (y(19)*params(9)+x(1));
    residual(19) = (T(8)*params(10)*(y(1)+y(13))*(y(6)-params(5))/(1+params(10))*T(9)+params(11)*(T(2)*y(16)*T(10)-T(5)+T(6)*y(17)*params(12)*T(11)-T(1)*T(8))) - (T(4)*T(1)*params(8)*(y(5)+y(11))+y(18)*(T(12)+params(11)*(T(2)*T(10)-T(5)+T(6)*params(12)*T(11)-T(1)*T(8))-T(4)*T(1)*params(8)));
end
