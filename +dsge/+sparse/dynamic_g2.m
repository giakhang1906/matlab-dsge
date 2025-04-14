function [g2_v, T_order, T] = dynamic_g2(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(27, 1);
end
[T_order, T] = dsge.sparse.dynamic_g2_tt(y, x, params, steady_state, T_order, T);
g2_v = NaN(17, 1);
g2_v(1)=(-T(23));
g2_v(2)=T(25);
g2_v(3)=(-T(23));
g2_v(4)=T(25);
g2_v(5)=(-(T(23)*T(24)+T(7)*T(27)+T(23)*T(24)+T(6)*(-((-(params(3)*(y(33)+y(28))*params(6)*(params(3)-1)))*(params(6)*(params(3)-1)*y(38)*params(6)*(params(3)-1)+params(6)*(params(3)-1)*y(38)*params(6)*(params(3)-1))))/(y(38)*params(6)*(params(3)-1)*y(38)*params(6)*(params(3)-1)*y(38)*params(6)*(params(3)-1)*y(38)*params(6)*(params(3)-1))));
g2_v(6)=T(18);
g2_v(7)=T(19);
g2_v(8)=T(10)*T(11)*(y(23)+y(23))/(y(23)*y(23)*y(23)*y(23))-y(37)*T(10)*T(15)*(y(23)+y(23))/(y(23)*y(23)*y(23)*y(23));
g2_v(9)=T(10)*T(17)*params(10)*(y(20)+y(32))*1/(1+params(10))-y(37)*T(10)*T(17)*params(10)*1/(1+params(10));
g2_v(10)=T(18);
g2_v(11)=(-T(18));
g2_v(12)=(-(T(1)*params(8)*T(22)));
g2_v(13)=T(19);
g2_v(14)=(-T(19));
g2_v(15)=(-(T(1)*params(8)*T(22)));
g2_v(16)=(-(params(11)*(-T(23))-T(1)*params(8)*T(22)));
g2_v(17)=params(11)*(-T(27))-(T(1)*params(8)*(y(24)+y(30))*T(26)+y(37)*(params(11)*(-T(27))-T(1)*params(8)*T(26)));
end
