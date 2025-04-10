function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = dsge.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 52
    T = [T; NaN(52 - size(T, 1), 1)];
end
T(19) = getPowerDeriv(y(20),(-params(2)),1);
T(20) = T(19)/((1+params(10))*y(32));
T(21) = (-(T(2)*T(20)));
T(22) = params(1)*T(21)/(T(4)*T(4));
T(23) = getPowerDeriv(y(39),(-params(2)),1);
T(24) = T(23)/((1+params(10))*y(32));
T(25) = params(1)*T(24)/T(4);
T(26) = (1-params(8))/(y(33)*y(38)*params(6));
T(27) = getPowerDeriv(T(16),1/(params(6)-1),1);
T(28) = 1/(y(34)*params(12)*params(7));
T(29) = getPowerDeriv(y(25)/(y(34)*params(12)*params(7)),1/(params(7)-1),1);
T(30) = (-(y(24)*(1-params(8))*params(6)*1/y(30)));
T(31) = (-(y(25)*params(7)*1/y(31)));
T(32) = getPowerDeriv(y(30),params(6),1);
T(33) = params(6)*(-y(28))/(y(30)*y(30));
T(34) = params(7)*(-y(29))/(y(31)*y(31));
T(35) = (1+params(10))*y(32)*(1+params(10))*y(32);
T(36) = (-(T(1)*(1+params(10))))/T(35);
T(37) = (-((1+params(10))*T(3)))/T(35);
T(38) = params(1)*(T(4)*T(36)-T(2)*T(37))/(T(4)*T(4));
T(39) = (-y(33))/(y(32)*y(32));
T(40) = getPowerDeriv(y(33)/y(32),(-params(2)),1);
T(41) = (-y(34))/(y(32)*y(32));
T(42) = getPowerDeriv(y(34)/y(32),(-params(2)),1);
T(43) = 1/y(32);
T(44) = T(7)*getPowerDeriv(y(33),1-params(3),1);
T(45) = getPowerDeriv(T(11),1/(1-params(3)),1);
T(46) = (-(y(24)*(1-params(8))*y(38)*params(6)))/(y(33)*y(38)*params(6)*y(33)*y(38)*params(6));
T(47) = T(27)*T(46);
T(48) = T(9)*getPowerDeriv(y(34),1-params(3),1);
T(49) = (-(y(25)*params(12)*params(7)))/(y(34)*params(12)*params(7)*y(34)*params(12)*params(7));
T(50) = (-(T(29)*T(49)));
T(51) = (-(y(24)*(1-params(8))*y(33)*params(6)))/(y(33)*y(38)*params(6)*y(33)*y(38)*params(6));
T(52) = T(27)*T(51);
end
