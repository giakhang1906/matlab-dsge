function [y, T, residual, g1] = static_2(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(10, 1);
  residual(1)=(y(14))-(params(3)/(params(3)-1)*y(5)*(1-params(8))/(params(6)*y(9)/y(11)));
  T(2)=(y(5)*(1-params(8))/(y(14)*y(19)*params(6)))^(1/(params(6)-1));
  residual(2)=(y(11))-(T(2));
  residual(3)=(y(6))-(y(5));
  T(3)=(y(6)/(y(15)*params(12)*params(7)))^(1/(params(7)-1));
  residual(4)=(y(3))-(T(3)+y(4)*y(3));
  residual(5)=(1)-(params(1)*(1-params(5)+y(6)+y(4)*(y(5)-y(6))));
  residual(6)=(y(15))-(params(3)/(params(3)-1)*y(6)/(params(7)*y(10)/y(12)));
  residual(7)=(y(9))-(y(19)*y(11)^params(6));
  residual(8)=(y(10))-(params(12)*y(12)^params(7));
  residual(9)=(y(3))-(T(2)/y(4));
  residual(10)=(y(12))-(T(3));
  T(4)=getPowerDeriv(y(5)*(1-params(8))/(y(14)*y(19)*params(6)),1/(params(6)-1),1);
  T(5)=getPowerDeriv(y(6)/(y(15)*params(12)*params(7)),1/(params(7)-1),1);
if nargout > 3
    g1_v = NaN(31, 1);
g1_v(1)=1;
g1_v(2)=(-(T(4)*(-(y(5)*(1-params(8))*y(19)*params(6)))/(y(14)*y(19)*params(6)*y(14)*y(19)*params(6))));
g1_v(3)=(-(T(4)*(-(y(5)*(1-params(8))*y(19)*params(6)))/(y(14)*y(19)*params(6)*y(14)*y(19)*params(6))/y(4)));
g1_v(4)=(-(params(3)/(params(3)-1)*(-(y(5)*(1-params(8))*params(6)*(-y(9))/(y(11)*y(11))))/(params(6)*y(9)/y(11)*params(6)*y(9)/y(11))));
g1_v(5)=1;
g1_v(6)=(-(y(19)*getPowerDeriv(y(11),params(6),1)));
g1_v(7)=(-(params(3)/(params(3)-1)*(1-params(8))/(params(6)*y(9)/y(11))));
g1_v(8)=(-((1-params(8))/(y(14)*y(19)*params(6))*T(4)));
g1_v(9)=(-1);
g1_v(10)=(-(params(1)*y(4)));
g1_v(11)=(-((1-params(8))/(y(14)*y(19)*params(6))*T(4)/y(4)));
g1_v(12)=1-y(4);
g1_v(13)=1;
g1_v(14)=1;
g1_v(15)=(-(1/(y(15)*params(12)*params(7))*T(5)));
g1_v(16)=(-(params(1)*(1-y(4))));
g1_v(17)=(-(params(3)/(params(3)-1)*1/(params(7)*y(10)/y(12))));
g1_v(18)=(-(1/(y(15)*params(12)*params(7))*T(5)));
g1_v(19)=(-(T(5)*(-(y(6)*params(12)*params(7)))/(y(15)*params(12)*params(7)*y(15)*params(12)*params(7))));
g1_v(20)=1;
g1_v(21)=(-(T(5)*(-(y(6)*params(12)*params(7)))/(y(15)*params(12)*params(7)*y(15)*params(12)*params(7))));
g1_v(22)=(-(params(3)/(params(3)-1)*(-(y(5)*(1-params(8))*params(6)*1/y(11)))/(params(6)*y(9)/y(11)*params(6)*y(9)/y(11))));
g1_v(23)=1;
g1_v(24)=(-(params(3)/(params(3)-1)*(-(y(6)*params(7)*1/y(12)))/(params(7)*y(10)/y(12)*params(7)*y(10)/y(12))));
g1_v(25)=1;
g1_v(26)=(-y(3));
g1_v(27)=(-(params(1)*(y(5)-y(6))));
g1_v(28)=(-((-T(2))/(y(4)*y(4))));
g1_v(29)=(-(params(3)/(params(3)-1)*(-(y(6)*params(7)*(-y(10))/(y(12)*y(12))))/(params(7)*y(10)/y(12)*params(7)*y(10)/y(12))));
g1_v(30)=(-(params(12)*getPowerDeriv(y(12),params(7),1)));
g1_v(31)=1;
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 10, 10);
end
end
