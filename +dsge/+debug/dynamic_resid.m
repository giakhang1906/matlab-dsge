function [lhs, rhs] = dynamic_resid(y, x, params, steady_state)
T = NaN(18, 1);
lhs = NaN(19, 1);
rhs = NaN(19, 1);
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
lhs(1) = 1;
rhs(1) = T(5)*T(6);
lhs(2) = y(21);
rhs(2) = y(41)-(1-params(5))*y(22);
lhs(3) = y(20);
rhs(3) = (y(22)*(y(25)+y(23)*(y(24)-y(25)))-y(21))/((1+params(10))*y(32));
lhs(4) = y(25);
rhs(4) = y(24);
lhs(5) = y(26);
rhs(5) = y(20)*T(8);
lhs(6) = y(27);
rhs(6) = y(20)*T(10);
lhs(7) = y(32);
rhs(7) = T(11)^(1/(1-params(3)));
lhs(8) = y(28);
rhs(8) = y(38)*T(12);
lhs(9) = y(29);
rhs(9) = params(12)*y(31)^params(7);
lhs(10) = y(35);
rhs(10) = y(33)*y(28)-y(30)*y(24)*(1-params(8));
lhs(11) = y(36);
rhs(11) = y(34)*y(29)-y(25)*y(31);
lhs(12) = y(33);
rhs(12) = T(13)*y(24)*(1-params(8))/T(14);
lhs(13) = y(34);
rhs(13) = T(13)*y(25)/T(15);
lhs(14) = y(30);
rhs(14) = T(17);
lhs(15) = y(31);
rhs(15) = T(18);
lhs(16) = y(22);
rhs(16) = T(17)/y(23);
lhs(17) = y(22);
rhs(17) = T(18)+y(22)*y(23);
lhs(18) = log(y(38));
rhs(18) = params(9)*log(y(19))+x(1);
lhs(19) = y(37);
rhs(19) = y(20)*params(10)*y(32)+params(11)*(y(35)+y(36))-y(30)*y(24)*params(8);
end
