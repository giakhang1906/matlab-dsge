function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(11, 1);
end
[T_order, T] = dsge.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(19, 1);
    residual(1) = (1) - (params(1)*(1-params(5)+y(6)+y(4)*(y(5)-y(6))));
    residual(2) = (y(2)) - (y(3)-(1-params(5))*y(3));
    residual(3) = (y(1)) - ((y(3)*(y(6)+y(4)*(y(5)-y(6)))-y(2))/((1+params(10))*y(13)));
    residual(4) = (y(6)) - (y(5));
    residual(5) = (y(7)) - (y(1)*T(2));
    residual(6) = (y(8)) - (y(1)*T(4));
    residual(7) = (y(13)) - (T(5)^(1/(1-params(3))));
    residual(8) = (y(9)) - (y(19)*T(6));
    residual(9) = (y(10)) - (params(12)*y(12)^params(7));
    residual(10) = (y(16)) - (y(14)*y(9)-y(11)*y(5)*(1-params(8)));
    residual(11) = (y(17)) - (y(15)*y(10)-y(6)*y(12));
    residual(12) = (y(14)) - (T(7)*y(5)*(1-params(8))/T(8));
    residual(13) = (y(15)) - (T(7)*y(6)/T(9));
    residual(14) = (y(11)) - (T(10));
    residual(15) = (y(12)) - (T(11));
    residual(16) = (y(3)) - (T(10)/y(4));
    residual(17) = (y(3)) - (T(11)+y(4)*y(3));
    residual(18) = (log(y(19))) - (log(y(19))*params(9)+x(1));
    residual(19) = (y(18)) - (y(1)*params(10)*y(13)+params(11)*(y(16)+y(17))-y(11)*y(5)*params(8));
end
