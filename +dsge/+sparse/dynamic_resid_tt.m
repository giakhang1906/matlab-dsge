function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 18
    T = [T; NaN(18 - size(T, 1), 1)];
end
T(1) = y(39)^(-params(2));
T(2) = T(1)/((1+params(10))*y(32));
T(3) = y(20)^(-params(2));
T(4) = T(3)/((1+params(10))*y(32));
T(5) = params(1)*T(2)/T(4);
T(6) = 1-params(5)+y(44)+y(42)*(y(43)-y(44));
T(7) = 1/params(4);
T(8) = (y(33)/y(32))^(-params(2))*T(7);
T(9) = 1/(1-params(4));
T(10) = (y(34)/y(32))^(-params(2))*T(9);
T(11) = T(7)*y(33)^(1-params(3))+T(9)*y(34)^(1-params(3));
T(12) = y(30)^params(6);
T(13) = params(3)/(params(3)-1);
T(14) = params(6)*y(28)/y(30);
T(15) = params(7)*y(29)/y(31);
T(16) = y(24)*(1-params(8))/(y(33)*y(38)*params(6));
T(17) = T(16)^(1/(params(6)-1));
T(18) = (y(25)/(y(34)*params(12)*params(7)))^(1/(params(7)-1));
end
