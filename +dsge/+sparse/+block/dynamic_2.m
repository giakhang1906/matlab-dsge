function [y, T, residual, g1] = dynamic_2(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(11, 1);
  y(28)=y(38)*y(30)^params(6);
  y(29)=params(12)*y(31)^params(7);
  residual(1)=(y(21))-(y(41)-(1-params(5))*y(22));
  residual(2)=(y(20))-((y(22)*(y(25)+y(23)*(y(24)-y(25)))-y(21))/((1+params(10))*y(32)));
  T(1)=1/params(4)*y(33)^(1-params(3))+1/(1-params(4))*y(34)^(1-params(3));
  residual(3)=(y(32))-(T(1)^(1/(1-params(3))));
  residual(4)=(y(33))-(params(3)/(params(3)-1)*y(24)*(1-params(8))/(params(6)*y(28)/y(30)));
  residual(5)=(y(34))-(params(3)/(params(3)-1)*y(25)/(params(7)*y(29)/y(31)));
  T(2)=(y(24)*(1-params(8))/(y(33)*y(38)*params(6)))^(1/(params(6)-1));
  residual(6)=(y(30))-(T(2));
  residual(7)=(y(25))-(y(24));
  T(3)=(y(25)/(y(34)*params(12)*params(7)))^(1/(params(7)-1));
  residual(8)=(y(22))-(T(3)+y(22)*y(23));
  T(4)=y(39)^(-params(2));
  T(5)=y(20)^(-params(2));
  T(6)=T(5)/((1+params(10))*y(32));
  T(7)=params(1)*T(4)/((1+params(10))*y(32))/T(6);
  residual(9)=(1)-(T(7)*(1-params(5)+y(44)+y(42)*(y(43)-y(44))));
  residual(10)=(y(22))-(T(2)/y(23));
  residual(11)=(y(31))-(T(3));
  T(8)=getPowerDeriv(y(24)*(1-params(8))/(y(33)*y(38)*params(6)),1/(params(6)-1),1);
  T(9)=getPowerDeriv(y(25)/(y(34)*params(12)*params(7)),1/(params(7)-1),1);
  T(10)=getPowerDeriv(T(1),1/(1-params(3)),1);
if nargout > 3
    g1_v = NaN(36, 1);
g1_v(1)=1;
g1_v(2)=(-((-1)/((1+params(10))*y(32))));
g1_v(3)=(-((-((1+params(10))*(y(22)*(y(25)+y(23)*(y(24)-y(25)))-y(21))))/((1+params(10))*y(32)*(1+params(10))*y(32))));
g1_v(4)=1;
g1_v(5)=(-((1-params(5)+y(44)+y(42)*(y(43)-y(44)))*params(1)*(T(6)*(-(T(4)*(1+params(10))))/((1+params(10))*y(32)*(1+params(10))*y(32))-T(4)/((1+params(10))*y(32))*(-((1+params(10))*T(5)))/((1+params(10))*y(32)*(1+params(10))*y(32)))/(T(6)*T(6))));
g1_v(6)=(-(T(10)*1/(1-params(4))*getPowerDeriv(y(34),1-params(3),1)));
g1_v(7)=1;
g1_v(8)=(-(T(9)*(-(y(25)*params(12)*params(7)))/(y(34)*params(12)*params(7)*y(34)*params(12)*params(7))));
g1_v(9)=(-(T(9)*(-(y(25)*params(12)*params(7)))/(y(34)*params(12)*params(7)*y(34)*params(12)*params(7))));
g1_v(10)=(-(params(3)/(params(3)-1)*(-(y(24)*(1-params(8))*params(6)*(y(30)*y(38)*getPowerDeriv(y(30),params(6),1)-y(28))/(y(30)*y(30))))/(params(6)*y(28)/y(30)*params(6)*y(28)/y(30))));
g1_v(11)=1;
g1_v(12)=(-(params(3)/(params(3)-1)*(-(y(25)*params(7)*(y(31)*params(12)*getPowerDeriv(y(31),params(7),1)-y(29))/(y(31)*y(31))))/(params(7)*y(29)/y(31)*params(7)*y(29)/y(31))));
g1_v(13)=1;
g1_v(14)=(-(1/params(4)*getPowerDeriv(y(33),1-params(3),1)*T(10)));
g1_v(15)=1;
g1_v(16)=(-(T(8)*(-(y(24)*(1-params(8))*y(38)*params(6)))/(y(33)*y(38)*params(6)*y(33)*y(38)*params(6))));
g1_v(17)=(-(T(8)*(-(y(24)*(1-params(8))*y(38)*params(6)))/(y(33)*y(38)*params(6)*y(33)*y(38)*params(6))/y(23)));
g1_v(18)=(-(y(22)*y(23)/((1+params(10))*y(32))));
g1_v(19)=(-(params(3)/(params(3)-1)*(1-params(8))/(params(6)*y(28)/y(30))));
g1_v(20)=(-((1-params(8))/(y(33)*y(38)*params(6))*T(8)));
g1_v(21)=(-1);
g1_v(22)=(-((1-params(8))/(y(33)*y(38)*params(6))*T(8)/y(23)));
g1_v(23)=1-params(5);
g1_v(24)=(-((y(25)+y(23)*(y(24)-y(25)))/((1+params(10))*y(32))));
g1_v(25)=1-y(23);
g1_v(26)=1;
g1_v(27)=1;
g1_v(28)=(-((1-params(5)+y(44)+y(42)*(y(43)-y(44)))*params(1)*(-(T(4)/((1+params(10))*y(32))*getPowerDeriv(y(20),(-params(2)),1)/((1+params(10))*y(32))))/(T(6)*T(6))));
g1_v(29)=(-(y(22)*(y(24)-y(25))/((1+params(10))*y(32))));
g1_v(30)=(-y(22));
g1_v(31)=(-((-T(2))/(y(23)*y(23))));
g1_v(32)=(-(y(22)*(1-y(23))/((1+params(10))*y(32))));
g1_v(33)=(-(params(3)/(params(3)-1)*1/(params(7)*y(29)/y(31))));
g1_v(34)=1;
g1_v(35)=(-(1/(y(34)*params(12)*params(7))*T(9)));
g1_v(36)=(-(1/(y(34)*params(12)*params(7))*T(9)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 11, 11);
end
end
