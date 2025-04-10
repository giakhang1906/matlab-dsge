function [y, T] = static_3(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2)=y(3)-(1-params(5))*y(3);
  y(13)=(1/params(4)*y(14)^(1-params(3))+1/(1-params(4))*y(15)^(1-params(3)))^(1/(1-params(3)));
  y(1)=(y(3)*(y(6)+y(4)*(y(5)-y(6)))-y(2))/((1+params(10))*y(13));
  y(17)=y(15)*y(10)-y(6)*y(12);
  y(16)=y(14)*y(9)-y(11)*y(5)*(1-params(8));
  y(18)=y(1)*params(10)*y(13)+params(11)*(y(16)+y(17))-y(11)*y(5)*params(8);
  T(6)=(y(15)/y(13))^(-params(2))*1/(1-params(4));
  y(8)=y(1)*T(6);
  T(7)=(y(14)/y(13))^(-params(2))*1/params(4);
  y(7)=y(1)*T(7);
end
