function [y, T] = static_10(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(13)=0.65*y(14)+0.35*y(15);
  y(1)=(1+params(9))/(1/params(1)-1)*((1/params(1)-1+params(4))*(y(6)+y(3))-params(4)*y(2));
  T(7)=params(9)*T(5)*(1/params(1)-1)/(1+params(9))*0.3333333333333333+params(10)*(T(6)-(1-params(7))*(1/params(1)-1+params(4))*T(5)+T(3)-(1/params(1)-1+params(4))*T(2))-T(5)*params(7)*(1/params(1)-1+params(4));
  y(18)=(params(9)*T(5)*(1/params(1)-1)/(1+params(9))*0.3333333333333333*(y(1)+y(13))+params(10)*((T(6)-(1-params(7))*(1/params(1)-1+params(4))*T(5))*y(16)+(T(3)-(1/params(1)-1+params(4))*T(2))*y(17))-T(5)*params(7)*(1/params(1)-1+params(4))*(y(5)+y(11)))/T(7);
end
