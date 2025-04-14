function [y, T, residual, g1] = dynamic_2(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(8, 1);
  y(32)=y(33)*0.5+y(34)*0.5;
  y(30)=y(22)+y(23);
  y(31)=1/(params(7)-1)*(y(25)-y(34));
  y(28)=y(38)+params(6)*y(30);
  y(29)=params(7)*y(31);
  T(1)=params(5)+1/params(1)-1;
  residual(1)=(y(20)*(1/params(1)-1)/T(1)+params(5)*(y(21)-y(32))/T(1))-(0);
  residual(2)=(y(24))-(y(25));
  residual(3)=(y(31))-(y(22)+0.5*y(23));
  residual(4)=(y(34)+y(29))-(y(25)+y(31));
  residual(5)=(y(30))-(1/(params(6)-1)*(y(24)-y(38)-y(33)));
  residual(6)=(y(39)-y(20))-((1-params(1)*(1-params(5)))*y(43));
  residual(7)=(y(41))-(params(5)*y(21)+(1-params(5))*y(22));
  residual(8)=(y(33)+y(28))-(y(24)+y(30));
if nargout > 3
    g1_v = NaN(23, 1);
g1_v(1)=params(5)/T(1);
g1_v(2)=(-params(5));
g1_v(3)=(-1);
g1_v(4)=1/(params(7)-1);
g1_v(5)=params(7)*1/(params(7)-1)-(1+1/(params(7)-1));
g1_v(6)=(-0.5);
g1_v(7)=1;
g1_v(8)=params(6)-1;
g1_v(9)=params(5)*(-0.5)/T(1);
g1_v(10)=(-(1/(params(7)-1)));
g1_v(11)=1/(params(7)-1)+1+params(7)*(-(1/(params(7)-1)));
g1_v(12)=params(5)*(-0.5)/T(1);
g1_v(13)=1/(params(6)-1);
g1_v(14)=1;
g1_v(15)=(1/params(1)-1)/T(1);
g1_v(16)=(-1);
g1_v(17)=(-1);
g1_v(18)=1;
g1_v(19)=(-(1-params(5)));
g1_v(20)=params(6)-1;
g1_v(21)=1;
g1_v(22)=(-(1/(params(6)-1)));
g1_v(23)=(-1);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 8, 8);
end
end
