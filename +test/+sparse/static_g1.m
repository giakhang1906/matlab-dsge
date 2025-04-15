function [g1, T_order, T] = static_g1(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 8
    T_order = -1;
    T = NaN(12, 1);
end
[T_order, T] = test.sparse.static_g1_tt(y, x, params, T_order, T);
g1_v = NaN(66, 1);
g1_v(1)=(1/params(1)-1)/T(1);
g1_v(2)=(-1);
g1_v(3)=(-1);
g1_v(4)=(-(3*params(10)*(y(6)-params(5))/(1+params(10))*T(8)));
g1_v(5)=params(5)/T(1);
g1_v(6)=(-params(5));
g1_v(7)=1-(1-params(5));
g1_v(8)=(-1);
g1_v(9)=(-1);
g1_v(10)=(-1);
g1_v(11)=(-0.5);
g1_v(12)=(-(1-params(1)*(1-params(5))));
g1_v(13)=1;
g1_v(14)=(-(T(2)*(-(y(19)*params(6)))));
g1_v(15)=(-1);
g1_v(16)=(-T(5));
g1_v(17)=T(8)*T(1)*params(8);
g1_v(18)=(-1);
g1_v(19)=T(4);
g1_v(20)=(-1);
g1_v(21)=(-T(6));
g1_v(22)=y(18)*T(8)*3*params(10)*1/(1+params(10))-T(8)*3*params(10)*(y(1)+y(13))*1/(1+params(10));
g1_v(23)=1;
g1_v(24)=1;
g1_v(25)=1;
g1_v(26)=(-(T(2)*T(3)));
g1_v(27)=1;
g1_v(28)=1;
g1_v(29)=(-(T(4)*T(3)*1/(params(7)*params(12))));
g1_v(30)=1;
g1_v(31)=(-params(6));
g1_v(32)=(-(y(19)*params(6)*T(2)));
g1_v(33)=(-1);
g1_v(34)=1;
g1_v(35)=1;
g1_v(36)=T(8)*T(1)*params(8);
g1_v(37)=(-params(7));
g1_v(38)=T(4);
g1_v(39)=(-1);
g1_v(40)=1;
g1_v(41)=1;
g1_v(42)=(-params(5))/T(1);
g1_v(43)=(-params(3));
g1_v(44)=(-params(3));
g1_v(45)=1;
g1_v(46)=(-(3*params(10)*(y(6)-params(5))/(1+params(10))*T(8)));
g1_v(47)=params(3);
g1_v(48)=(-0.5);
g1_v(49)=(-(T(2)*T(3)));
g1_v(50)=1;
g1_v(51)=T(5);
g1_v(52)=params(3);
g1_v(53)=(-0.5);
g1_v(54)=(-(T(4)*T(3)*1/(params(7)*params(12))));
g1_v(55)=1;
g1_v(56)=T(6);
g1_v(57)=y(19)*params(6);
g1_v(58)=(-(params(11)*T(9)));
g1_v(59)=1;
g1_v(60)=(-(params(11)*T(10)));
g1_v(61)=T(11);
g1_v(62)=(-1);
g1_v(63)=params(6)*y(16)-T(2)*(-(params(6)*(y(5)-y(11))));
g1_v(64)=T(5);
g1_v(65)=1-params(9);
g1_v(66)=y(18)*(3*params(10)*(y(6)-params(5))/(1+params(10))*T(12)+params(11)*(1/params(6)-1)*T(1)*(1-params(8))*T(12)-T(1)*params(8)*T(12))-(3*(y(6)-params(5))/(1+params(10))*params(10)*(y(1)+y(13))*T(12)+params(11)*y(16)*(1/params(6)-1)*T(1)*(1-params(8))*T(12)-T(1)*(y(5)+y(11))*params(8)*T(12));
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 19, 19);
end
