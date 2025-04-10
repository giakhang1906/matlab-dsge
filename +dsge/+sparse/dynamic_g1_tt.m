function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = dsge.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 62
    T = [T; NaN(62 - size(T, 1), 1)];
end
T(26) = getPowerDeriv(y(20),(-params(2)),1);
T(27) = T(26)/T(2);
T(28) = (-(T(3)*T(27)));
T(29) = params(1)*T(28)/(T(5)*T(5));
T(30) = getPowerDeriv(y(39),(-params(2)),1);
T(31) = T(30)/T(2);
T(32) = params(1)*T(31)/T(5);
T(33) = (1-params(8))/(y(33)*y(38)*params(6));
T(34) = getPowerDeriv(T(20),T(21),1);
T(35) = 1/(y(34)*params(12)*params(7));
T(36) = getPowerDeriv(T(23),T(24),1);
T(37) = params(6)*1/y(30);
T(38) = (-(y(24)*(1-params(8))*T(37)));
T(39) = params(7)*1/y(31);
T(40) = (-(y(25)*T(39)));
T(41) = getPowerDeriv(y(30),params(6),1);
T(42) = params(6)*(-y(28))/(y(30)*y(30));
T(43) = params(7)*(-y(29))/(y(31)*y(31));
T(44) = T(2)*T(2);
T(45) = (-(T(1)*(1+params(10))))/T(44);
T(46) = (-((1+params(10))*T(4)))/T(44);
T(47) = params(1)*(T(5)*T(45)-T(3)*T(46))/(T(5)*T(5));
T(48) = (-y(33))/(y(32)*y(32));
T(49) = getPowerDeriv(T(8),(-params(2)),1);
T(50) = (-y(34))/(y(32)*y(32));
T(51) = getPowerDeriv(T(11),(-params(2)),1);
T(52) = 1/y(32);
T(53) = T(9)*getPowerDeriv(y(33),1-params(3),1);
T(54) = getPowerDeriv(T(14),T(15),1);
T(55) = y(33)*y(38)*params(6)*y(33)*y(38)*params(6);
T(56) = (-(y(24)*(1-params(8))*y(38)*params(6)))/T(55);
T(57) = T(34)*T(56);
T(58) = T(12)*getPowerDeriv(y(34),1-params(3),1);
T(59) = (-(y(25)*params(12)*params(7)))/(y(34)*params(12)*params(7)*y(34)*params(12)*params(7));
T(60) = (-(T(36)*T(59)));
T(61) = (-(y(24)*(1-params(8))*y(33)*params(6)))/T(55);
T(62) = T(34)*T(61);
end
