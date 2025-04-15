function [g2_v, T_order, T] = dynamic_g2(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(21, 1);
end
[T_order, T] = dsge.sparse.dynamic_g2_tt(y, x, params, steady_state, T_order, T);
g2_v = NaN(14, 1);
g2_v(1)=(-(T(3)*(-params(6))));
g2_v(2)=(-(params(6)*T(3)));
g2_v(3)=params(6);
g2_v(4)=(-T(16));
g2_v(5)=(-(T(8)*T(19)));
g2_v(6)=T(1)*params(8)*T(19);
g2_v(7)=(-T(16));
g2_v(8)=T(16);
g2_v(9)=y(37)*3*params(10)*1/(1+params(10))*T(19)-3*params(10)*(y(20)+y(32))*1/(1+params(10))*T(19);
g2_v(10)=T(1)*params(8)*T(19);
g2_v(11)=(-(T(8)*T(19)));
g2_v(12)=(-(params(11)*T(2)*T(1)*(1-params(8))*T(19)));
g2_v(13)=T(20);
g2_v(14)=y(37)*(T(8)*T(21)+params(11)*T(2)*T(1)*(1-params(8))*T(21)-T(1)*params(8)*T(21))-(T(15)*T(21)+params(11)*y(35)*T(2)*T(1)*(1-params(8))*T(21)-T(1)*params(8)*(y(24)+y(30))*T(21));
end
