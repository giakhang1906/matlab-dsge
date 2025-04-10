function [T_order, T] = dynamic_g2_tt(y, x, params, steady_state, T_order, T)
if T_order >= 2
    return
end
[T_order, T] = dsge.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
T_order = 2;
if size(T, 1) < 64
    T = [T; NaN(64 - size(T, 1), 1)];
end
T(53) = getPowerDeriv(y(33)/y(32),(-params(2)),2);
T(54) = getPowerDeriv(y(34)/y(32),(-params(2)),2);
T(55) = getPowerDeriv(T(11),1/(1-params(3)),2);
T(56) = getPowerDeriv(T(16),1/(params(6)-1),2);
T(57) = T(27)*(-((1-params(8))*y(38)*params(6)))/(y(33)*y(38)*params(6)*y(33)*y(38)*params(6))+T(26)*T(46)*T(56);
T(58) = T(27)*(-((1-params(8))*y(33)*params(6)))/(y(33)*y(38)*params(6)*y(33)*y(38)*params(6))+T(26)*T(51)*T(56);
T(59) = T(46)*T(46)*T(56)+T(27)*(-((-(y(24)*(1-params(8))*y(38)*params(6)))*(y(38)*params(6)*y(33)*y(38)*params(6)+y(38)*params(6)*y(33)*y(38)*params(6))))/(y(33)*y(38)*params(6)*y(33)*y(38)*params(6)*y(33)*y(38)*params(6)*y(33)*y(38)*params(6));
T(60) = T(46)*T(51)*T(56)+T(27)*(y(33)*y(38)*params(6)*y(33)*y(38)*params(6)*(-(params(6)*y(24)*(1-params(8))))-(-(y(24)*(1-params(8))*y(38)*params(6)))*(y(33)*y(38)*params(6)*y(33)*params(6)+y(33)*y(38)*params(6)*y(33)*params(6)))/(y(33)*y(38)*params(6)*y(33)*y(38)*params(6)*y(33)*y(38)*params(6)*y(33)*y(38)*params(6));
T(61) = T(51)*T(51)*T(56)+T(27)*(-((-(y(24)*(1-params(8))*y(33)*params(6)))*(y(33)*y(38)*params(6)*y(33)*params(6)+y(33)*y(38)*params(6)*y(33)*params(6))))/(y(33)*y(38)*params(6)*y(33)*y(38)*params(6)*y(33)*y(38)*params(6)*y(33)*y(38)*params(6));
T(62) = getPowerDeriv(y(25)/(y(34)*params(12)*params(7)),1/(params(7)-1),2);
T(63) = (-(T(29)*(-(params(12)*params(7)))/(y(34)*params(12)*params(7)*y(34)*params(12)*params(7))+T(28)*T(49)*T(62)));
T(64) = (-(T(49)*T(49)*T(62)+T(29)*(-((-(y(25)*params(12)*params(7)))*(params(12)*params(7)*y(34)*params(12)*params(7)+params(12)*params(7)*y(34)*params(12)*params(7))))/(y(34)*params(12)*params(7)*y(34)*params(12)*params(7)*y(34)*params(12)*params(7)*y(34)*params(12)*params(7))));
end
