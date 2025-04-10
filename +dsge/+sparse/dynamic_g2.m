function [g2_v, T_order, T] = dynamic_g2(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(64, 1);
end
[T_order, T] = dsge.sparse.dynamic_g2_tt(y, x, params, steady_state, T_order, T);
g2_v = NaN(85, 1);
g2_v(1)=(-(T(6)*params(1)*(T(4)*T(4)*(-(T(2)*getPowerDeriv(y(20),(-params(2)),2)/((1+params(10))*y(32))))-T(21)*(T(4)*T(20)+T(4)*T(20)))/(T(4)*T(4)*T(4)*T(4))));
g2_v(2)=(-(T(6)*params(1)*(-(T(20)*T(24)))/(T(4)*T(4))));
g2_v(3)=(-((y(43)-y(44))*T(22)));
g2_v(4)=(-(y(42)*T(22)));
g2_v(5)=(-(T(22)*(1-y(42))));
g2_v(6)=(-(T(6)*params(1)*(T(4)*T(4)*(-(T(20)*T(36)+T(2)*(-((1+params(10))*T(19)))/T(35)))-T(21)*(T(4)*T(37)+T(4)*T(37)))/(T(4)*T(4)*T(4)*T(4))));
g2_v(7)=(-(T(6)*params(1)*getPowerDeriv(y(39),(-params(2)),2)/((1+params(10))*y(32))/T(4)));
g2_v(8)=(-((y(43)-y(44))*T(25)));
g2_v(9)=(-(y(42)*T(25)));
g2_v(10)=(-(T(25)*(1-y(42))));
g2_v(11)=(-(T(6)*params(1)*(T(4)*(-((1+params(10))*T(23)))/T(35)-T(24)*T(37))/(T(4)*T(4))));
g2_v(12)=(-T(5));
g2_v(13)=T(5);
g2_v(14)=(-((y(43)-y(44))*T(38)));
g2_v(15)=(-(y(42)*T(38)));
g2_v(16)=(-((1-y(42))*T(38)));
g2_v(17)=(-(T(6)*params(1)*(T(4)*T(4)*(T(36)*T(37)+T(4)*(-((-(T(1)*(1+params(10))))*((1+params(10))*(1+params(10))*y(32)+(1+params(10))*(1+params(10))*y(32))))/(T(35)*T(35))-(T(36)*T(37)+T(2)*(-((-((1+params(10))*T(3)))*((1+params(10))*(1+params(10))*y(32)+(1+params(10))*(1+params(10))*y(32))))/(T(35)*T(35))))-(T(4)*T(36)-T(2)*T(37))*(T(4)*T(37)+T(4)*T(37)))/(T(4)*T(4)*T(4)*T(4))));
g2_v(18)=(-((1+params(10))/T(35)));
g2_v(19)=(-((y(24)-y(25))/((1+params(10))*y(32))));
g2_v(20)=(-(y(23)/((1+params(10))*y(32))));
g2_v(21)=(-((1-y(23))/((1+params(10))*y(32))));
g2_v(22)=(-((-((1+params(10))*(y(25)+y(23)*(y(24)-y(25)))))/T(35)));
g2_v(23)=(-(y(22)/((1+params(10))*y(32))));
g2_v(24)=(-((-y(22))/((1+params(10))*y(32))));
g2_v(25)=(-((-((1+params(10))*y(22)*(y(24)-y(25))))/T(35)));
g2_v(26)=(-((-((1+params(10))*y(22)*y(23)))/T(35)));
g2_v(27)=(-((-((1+params(10))*y(22)*(1-y(23))))/T(35)));
g2_v(28)=(-((-((-((1+params(10))*(y(22)*(y(25)+y(23)*(y(24)-y(25)))-y(21))))*((1+params(10))*(1+params(10))*y(32)+(1+params(10))*(1+params(10))*y(32))))/(T(35)*T(35))));
g2_v(29)=(-(T(7)*T(39)*T(40)));
g2_v(30)=(-(T(7)*T(40)*T(43)));
g2_v(31)=(-(y(20)*T(7)*(T(40)*(-((-y(33))*(y(32)+y(32))))/(y(32)*y(32)*y(32)*y(32))+T(39)*T(39)*T(53))));
g2_v(32)=(-(y(20)*T(7)*(T(40)*(-1)/(y(32)*y(32))+T(39)*T(43)*T(53))));
g2_v(33)=(-(y(20)*T(7)*T(43)*T(43)*T(53)));
g2_v(34)=(-(T(9)*T(41)*T(42)));
g2_v(35)=(-(T(9)*T(42)*T(43)));
g2_v(36)=(-(y(20)*T(9)*(T(42)*(-((-y(34))*(y(32)+y(32))))/(y(32)*y(32)*y(32)*y(32))+T(41)*T(41)*T(54))));
g2_v(37)=(-(y(20)*T(9)*(T(42)*(-1)/(y(32)*y(32))+T(41)*T(43)*T(54))));
g2_v(38)=(-(y(20)*T(9)*T(43)*T(43)*T(54)));
g2_v(39)=(-(T(45)*T(7)*getPowerDeriv(y(33),1-params(3),2)+T(44)*T(44)*T(55)));
g2_v(40)=(-(T(44)*T(48)*T(55)));
g2_v(41)=(-(T(48)*T(48)*T(55)+T(45)*T(9)*getPowerDeriv(y(34),1-params(3),2)));
g2_v(42)=(-(y(38)*getPowerDeriv(y(30),params(6),2)));
g2_v(43)=(-T(32));
g2_v(44)=(-(params(12)*getPowerDeriv(y(31),params(7),2)));
g2_v(45)=1-params(8);
g2_v(46)=(-1);
g2_v(47)=1;
g2_v(48)=(-1);
g2_v(49)=(-(T(13)*(-((1-params(8))*params(6)*1/y(30)))/(T(14)*T(14))));
g2_v(50)=(-(T(13)*(-((1-params(8))*T(33)))/(T(14)*T(14))));
g2_v(51)=(-(T(13)*(-(T(30)*(T(14)*params(6)*1/y(30)+T(14)*params(6)*1/y(30))))/(T(14)*T(14)*T(14)*T(14))));
g2_v(52)=(-(T(13)*(T(14)*T(14)*(-(y(24)*(1-params(8))*params(6)*(-1)/(y(30)*y(30))))-T(30)*(T(14)*T(33)+T(14)*T(33)))/(T(14)*T(14)*T(14)*T(14))));
g2_v(53)=(-(T(13)*(T(14)*T(14)*(-(y(24)*(1-params(8))*params(6)*(-((-y(28))*(y(30)+y(30))))/(y(30)*y(30)*y(30)*y(30))))-(-(y(24)*(1-params(8))*T(33)))*(T(14)*T(33)+T(14)*T(33)))/(T(14)*T(14)*T(14)*T(14))));
g2_v(54)=(-(T(13)*(-(params(7)*1/y(31)))/(T(15)*T(15))));
g2_v(55)=(-(T(13)*(-T(34))/(T(15)*T(15))));
g2_v(56)=(-(T(13)*(-(T(31)*(T(15)*params(7)*1/y(31)+T(15)*params(7)*1/y(31))))/(T(15)*T(15)*T(15)*T(15))));
g2_v(57)=(-(T(13)*(T(15)*T(15)*(-(y(25)*params(7)*(-1)/(y(31)*y(31))))-T(31)*(T(15)*T(34)+T(15)*T(34)))/(T(15)*T(15)*T(15)*T(15))));
g2_v(58)=(-(T(13)*(T(15)*T(15)*(-(y(25)*params(7)*(-((-y(29))*(y(31)+y(31))))/(y(31)*y(31)*y(31)*y(31))))-(-(y(25)*T(34)))*(T(15)*T(34)+T(15)*T(34)))/(T(15)*T(15)*T(15)*T(15))));
g2_v(59)=(-(T(26)*T(26)*T(56)));
g2_v(60)=(-T(57));
g2_v(61)=(-T(58));
g2_v(62)=(-T(59));
g2_v(63)=(-T(60));
g2_v(64)=(-T(61));
g2_v(65)=(-(T(28)*T(28)*T(62)));
g2_v(66)=T(63);
g2_v(67)=T(64);
g2_v(68)=(-((-((-T(17))*(y(23)+y(23))))/(y(23)*y(23)*y(23)*y(23))));
g2_v(69)=(-((-(T(26)*T(27)))/(y(23)*y(23))));
g2_v(70)=(-((-T(47))/(y(23)*y(23))));
g2_v(71)=(-((-T(52))/(y(23)*y(23))));
g2_v(72)=(-(T(26)*T(26)*T(56)/y(23)));
g2_v(73)=(-(T(57)/y(23)));
g2_v(74)=(-(T(58)/y(23)));
g2_v(75)=(-(T(59)/y(23)));
g2_v(76)=(-(T(60)/y(23)));
g2_v(77)=(-(T(61)/y(23)));
g2_v(78)=(-1);
g2_v(79)=(-(T(28)*T(28)*T(62)));
g2_v(80)=T(63);
g2_v(81)=T(64);
g2_v(82)=(-(params(9)*(-1)/(y(19)*y(19))));
g2_v(83)=(-1)/(y(38)*y(38));
g2_v(84)=(-params(10));
g2_v(85)=params(8);
end
