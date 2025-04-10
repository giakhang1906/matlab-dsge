function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 11
    T = [T; NaN(11 - size(T, 1), 1)];
end
T(1) = 1/params(4);
T(2) = (y(14)/y(13))^(-params(2))*T(1);
T(3) = 1/(1-params(4));
T(4) = (y(15)/y(13))^(-params(2))*T(3);
T(5) = T(1)*y(14)^(1-params(3))+T(3)*y(15)^(1-params(3));
T(6) = y(11)^params(6);
T(7) = params(3)/(params(3)-1);
T(8) = params(6)*y(9)/y(11);
T(9) = params(7)*y(10)/y(12);
T(10) = (y(5)*(1-params(8))/(y(14)*y(19)*params(6)))^(1/(params(6)-1));
T(11) = (y(6)/(y(15)*params(12)*params(7)))^(1/(params(7)-1));
end
