function [y, T] = static_10(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(13)=0.65*y(14)+0.35*y(15);
  y(1)=(1+params(10))/(1/params(1)-1)*((1/params(1)-1+params(5))*(y(6)+y(3))-params(5)*y(2));
  T(7)=params(10)*T(5)*(1/params(1)-1)/(1+params(10))*0.3333333333333333+(T(6)-(1-params(8))*(1/params(1)-1+params(5))*T(5))*params(11)+(T(3)-(1/params(1)-1+params(5))*T(2))*params(12)-T(5)*params(8)*(1/params(1)-1+params(5));
  y(18)=(params(10)*T(5)*(1/params(1)-1)/(1+params(10))*0.3333333333333333*(y(1)+y(13))+(T(6)-(1-params(8))*(1/params(1)-1+params(5))*T(5))*params(11)*y(16)+(T(3)-(1/params(1)-1+params(5))*T(2))*params(12)*y(17)-T(5)*params(8)*(1/params(1)-1+params(5))*(y(5)+y(11)))/T(7);
end
