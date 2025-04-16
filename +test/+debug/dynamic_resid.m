function [lhs, rhs] = dynamic_resid(y, x, params, steady_state)
T = NaN(14, 1);
lhs = NaN(19, 1);
rhs = NaN(19, 1);
T(1) = (0.5/params(4))^(1/(1-params(3)));
T(2) = (0.5/(1-params(4)))^(1/(1-params(3)));
T(3) = 1/params(1)-1+params(5);
T(4) = 1/(params(6)-1);
T(5) = 1/(params(7)-1);
T(6) = (1+params(10))/(1/params(1)-1);
T(7) = 1/(1/params(6)-1);
T(8) = params(3)/(params(3)-1);
T(9) = 1/(1/params(7)-1);
T(10) = ((1-params(8))*T(3)/(T(1)*params(6)))^T(4);
T(11) = (T(3)/(T(2)*params(12)*params(7)))^T(5);
T(12) = T(1)*(T(10))^params(6)-(1-params(8))*T(3)*T(10);
T(13) = T(2)*params(12)*(T(11))^params(7)-T(3)*T(11);
T(14) = params(10)*(1/params(1)-1)/(1+params(10))*0.3333333333333333*T(10);
lhs(1) = y(39)-y(20);
rhs(1) = (1-params(1)*(1-params(5)))*y(43);
lhs(2) = y(20);
rhs(2) = T(6)*(T(3)*(y(22)+y(25))-params(5)*y(21));
lhs(3) = y(24);
rhs(3) = y(25);
lhs(4) = y(26)-y(20);
rhs(4) = (-params(3))*(y(33)-y(32));
lhs(5) = y(27)-y(20);
rhs(5) = (-params(3))*(y(34)-y(32));
lhs(6) = y(32);
rhs(6) = 0.5*y(33)+0.5*y(34);
lhs(7) = y(22);
rhs(7) = params(5)*y(21)+(1-params(5))*y(3);
lhs(8) = y(28);
rhs(8) = y(38)+params(6)*y(11);
lhs(9) = y(29);
rhs(9) = params(7)*y(12);
lhs(10) = params(6)*y(35);
rhs(10) = T(7)*(T(8)*(y(33)+y(28))-params(6)*(y(24)-y(11)));
lhs(11) = y(36);
rhs(11) = T(9)*(T(8)*(y(34)+y(29))/(params(12)*params(7))-y(25)-y(12));
lhs(12) = y(33)+y(28);
rhs(12) = y(24)+y(11);
lhs(13) = y(34)+y(29);
rhs(13) = y(25)+y(12);
lhs(14) = y(11);
rhs(14) = T(4)*(y(24)-y(38)-y(33));
lhs(15) = y(12);
rhs(15) = T(5)*(y(25)-y(34));
lhs(16) = y(11);
rhs(16) = y(3)+y(23);
lhs(17) = y(12);
rhs(17) = y(3)+0.5*y(23);
lhs(18) = y(38);
rhs(18) = params(9)*y(19)+x(1);
lhs(19) = y(37);
rhs(19) = ((y(20)+y(32))*T(14)+params(11)*(y(35)*T(12)+y(36)*T(13))-params(8)*T(3)*T(10))/(T(14)+params(11)*(T(12)+T(13))-params(8)*T(3)*T(10));
end
