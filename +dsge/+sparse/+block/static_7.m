function [y, T] = static_7(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(1)=params(5)+1/params(1)-1;
  T(2)=(0.5/(1-params(4)))^(1/(1-params(3)));
  T(3)=(T(1)/(params(7)*params(12)*T(2)))^(1/(params(7)-1));
  y(17)=T(1)*T(3)*((-y(6))-y(12)+params(3)*(y(15)+y(10))/(params(12)*params(7)*(params(3)-1)));
  T(4)=(0.5/params(4))^(1/(1-params(3)));
  T(5)=(T(1)*(1-params(8))/(y(19)*params(6)*T(4)))^(1/(params(6)-1));
  T(6)=T(1)*(1-params(8))*T(5);
  y(16)=T(6)*((-y(5))-y(11)+params(3)*(y(14)+y(9))/(y(19)*params(6)*(params(3)-1)));
end
