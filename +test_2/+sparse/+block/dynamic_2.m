function [y, T, residual, g1] = dynamic_2(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(8, 1);
  y(31)=y(22)+0.5*y(23);
  y(29)=params(7)*y(31);
  y(30)=1/(params(6)-1)*(y(24)-y(38)-y(33));
  y(28)=y(38)+params(6)*y(30);
  residual(1)=(y(20))-((1+params(10))/(1/params(1)-1)*((1/params(1)-1+params(5))*(y(22)+y(25))-params(5)*y(21)));
  residual(2)=(y(30))-(y(22)+y(23));
  residual(3)=(y(31))-(1/(params(7)-1)*(y(25)-y(34)));
  residual(4)=(y(33)+y(28))-(y(24)+y(30));
  residual(5)=(y(34)+y(29))-(y(25)+y(31));
  residual(6)=(y(22))-(params(5)*y(21)+(1-params(5))*y(3));
  residual(7)=(y(24))-(y(25));
  residual(8)=(y(39)-y(20))-((1-params(1)*(1-params(5)))*y(43));
if nargout > 3
    g1_v = NaN(26, 1);
g1_v(1)=(-(1-params(5)));
g1_v(2)=(-((1+params(10))/(1/params(1)-1)*(-params(5))));
g1_v(3)=(-params(5));
g1_v(4)=(-1);
g1_v(5)=0.5;
g1_v(6)=0.5*params(7)-0.5;
g1_v(7)=1/(params(7)-1);
g1_v(8)=1;
g1_v(9)=(-(1/(params(6)-1)));
g1_v(10)=1/(params(6)-1)+1+params(6)*(-(1/(params(6)-1)));
g1_v(11)=(-((1/params(1)-1+params(5))*(1+params(10))/(1/params(1)-1)));
g1_v(12)=(-(1/(params(7)-1)));
g1_v(13)=(-1);
g1_v(14)=(-1);
g1_v(15)=(-((1/params(1)-1+params(5))*(1+params(10))/(1/params(1)-1)));
g1_v(16)=(-1);
g1_v(17)=1;
g1_v(18)=params(7)-1;
g1_v(19)=1;
g1_v(20)=1/(params(6)-1);
g1_v(21)=params(6)*1/(params(6)-1)-(1+1/(params(6)-1));
g1_v(22)=1;
g1_v(23)=1;
g1_v(24)=(-1);
g1_v(25)=(-(1-params(1)*(1-params(5))));
g1_v(26)=1;
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 8, 24);
end
end
