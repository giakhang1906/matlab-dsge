function [g1, T_order, T] = dynamic_g1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 9
    T_order = -1;
    T = NaN(15, 1);
end
[T_order, T] = test_2.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
g1_v = NaN(69, 1);
g1_v(1)=(-(1-params(5)));
g1_v(2)=T(9);
g1_v(3)=(-params(9));
g1_v(4)=(-1);
g1_v(5)=1;
g1_v(6)=(-1);
g1_v(7)=(-1);
g1_v(8)=(-(T(14)/(T(14)+params(11)*(T(12)+T(13))-params(8)*T(3)*T(10))));
g1_v(9)=(-(T(6)*(-params(5))));
g1_v(10)=(-params(5));
g1_v(11)=(-(T(3)*T(6)));
g1_v(12)=1;
g1_v(13)=(-1);
g1_v(14)=(-1);
g1_v(15)=(-1);
g1_v(16)=(-0.5);
g1_v(17)=1;
g1_v(18)=(-(T(7)*(-params(6))));
g1_v(19)=(-1);
g1_v(20)=(-T(4));
g1_v(21)=T(15);
g1_v(22)=(-(T(3)*T(6)));
g1_v(23)=(-1);
g1_v(24)=T(9);
g1_v(25)=(-1);
g1_v(26)=(-T(5));
g1_v(27)=1;
g1_v(28)=1;
g1_v(29)=1;
g1_v(30)=(-(T(7)*T(8)));
g1_v(31)=1;
g1_v(32)=1;
g1_v(33)=(-(T(9)*T(8)*1/(params(12)*params(7))));
g1_v(34)=1;
g1_v(35)=(-params(6));
g1_v(36)=(-(params(6)*T(7)));
g1_v(37)=(-1);
g1_v(38)=1;
g1_v(39)=1;
g1_v(40)=T(15);
g1_v(41)=(-params(7));
g1_v(42)=(-1);
g1_v(43)=1;
g1_v(44)=1;
g1_v(45)=(-params(3));
g1_v(46)=(-params(3));
g1_v(47)=1;
g1_v(48)=(-(T(14)/(T(14)+params(11)*(T(12)+T(13))-params(8)*T(3)*T(10))));
g1_v(49)=params(3);
g1_v(50)=(-0.5);
g1_v(51)=(-(T(7)*T(8)));
g1_v(52)=1;
g1_v(53)=T(4);
g1_v(54)=params(3);
g1_v(55)=(-0.5);
g1_v(56)=(-(T(9)*T(8)*1/(params(12)*params(7))));
g1_v(57)=1;
g1_v(58)=T(5);
g1_v(59)=params(6);
g1_v(60)=(-(params(11)*T(12)/(T(14)+params(11)*(T(12)+T(13))-params(8)*T(3)*T(10))));
g1_v(61)=1;
g1_v(62)=(-(params(11)*T(13)/(T(14)+params(11)*(T(12)+T(13))-params(8)*T(3)*T(10))));
g1_v(63)=1;
g1_v(64)=(-1);
g1_v(65)=T(4);
g1_v(66)=1;
g1_v(67)=1;
g1_v(68)=(-(1-params(1)*(1-params(5))));
g1_v(69)=(-1);
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 19, 58);
end
