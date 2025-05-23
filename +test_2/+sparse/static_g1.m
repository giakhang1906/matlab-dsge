function [g1, T_order, T] = static_g1(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 8
    T_order = -1;
    T = NaN(14, 1);
end
[T_order, T] = test_2.sparse.static_g1_tt(y, x, params, T_order, T);
g1_v = NaN(67, 1);
g1_v(1)=1;
g1_v(2)=(-1);
g1_v(3)=(-1);
g1_v(4)=T(13);
g1_v(5)=(-(T(12)*(-params(4))));
g1_v(6)=(-params(4));
g1_v(7)=(-(T(3)*T(12)));
g1_v(8)=1-(1-params(4));
g1_v(9)=(-1);
g1_v(10)=(-1);
g1_v(11)=(-1);
g1_v(12)=(-0.5);
g1_v(13)=1;
g1_v(14)=(1-params(7))*T(3)*T(5);
g1_v(15)=(-1);
g1_v(16)=(-T(4));
g1_v(17)=T(4);
g1_v(18)=T(14);
g1_v(19)=(-(params(1)*T(3)));
g1_v(20)=(-(T(3)*T(12)));
g1_v(21)=(-1);
g1_v(22)=T(3)*T(7)/(T(9)-T(3)*T(7));
g1_v(23)=(-1);
g1_v(24)=(-T(6));
g1_v(25)=T(6);
g1_v(26)=1;
g1_v(27)=1;
g1_v(28)=1;
g1_v(29)=(-T(8));
g1_v(30)=1;
g1_v(31)=1;
g1_v(32)=(-(T(9)/(T(9)-T(3)*T(7))));
g1_v(33)=1;
g1_v(34)=(-params(5));
g1_v(35)=(1-params(7))*T(3)*T(5);
g1_v(36)=(-1);
g1_v(37)=1;
g1_v(38)=T(14);
g1_v(39)=(-params(6));
g1_v(40)=T(3)*T(7)/(T(9)-T(3)*T(7));
g1_v(41)=(-1);
g1_v(42)=1;
g1_v(43)=(-params(2));
g1_v(44)=(-params(2));
g1_v(45)=1;
g1_v(46)=T(13);
g1_v(47)=params(2);
g1_v(48)=(-0.65);
g1_v(49)=(-T(8));
g1_v(50)=1;
g1_v(51)=T(4);
g1_v(52)=(-T(4));
g1_v(53)=params(2);
g1_v(54)=(-0.35);
g1_v(55)=(-(T(9)/(T(9)-T(3)*T(7))));
g1_v(56)=1;
g1_v(57)=T(6);
g1_v(58)=(-T(6));
g1_v(59)=T(8)-(1-params(7))*T(3)*T(5);
g1_v(60)=(-((T(8)-(1-params(7))*T(3)*T(5))*params(10)/T(11)));
g1_v(61)=1;
g1_v(62)=(-((T(9)-T(3)*T(7))*params(10)/T(11)));
g1_v(63)=1;
g1_v(64)=(-1);
g1_v(65)=T(4);
g1_v(66)=(-T(4));
g1_v(67)=1-params(8);
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 19, 19);
end
