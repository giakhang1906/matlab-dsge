function [y, T] = static_10(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(13)=0.5*y(14)+0.5*y(15);
  y(1)=(1+params(10))/(1/params(1)-1)*((1/params(1)-1+params(5))*(y(3)+y(6))-params(5)*y(2));
  T(1)=(0.5/params(4))^(1/(1-params(3)));
  T(2)=(0.5/(1-params(4)))^(1/(1-params(3)));
  T(3)=((1-params(8))*(1/params(1)-1+params(5))/(T(1)*params(6)))^(1/(params(6)-1));
  T(4)=((1/params(1)-1+params(5))/(T(2)*params(12)*params(7)))^(1/(params(7)-1));
  T(5)=T(1)*(T(3))^params(6)-(1-params(8))*(1/params(1)-1+params(5))*T(3);
  T(6)=T(2)*params(12)*(T(4))^params(7)-(1/params(1)-1+params(5))*T(4);
  T(7)=params(10)*T(3)*(1/params(1)-1)/(1+params(10))*0.3333333333333333+params(11)*(T(5)+T(6))-T(3)*params(8)*(1/params(1)-1+params(5));
  y(18)=(params(10)*T(3)*(1/params(1)-1)/(1+params(10))*0.3333333333333333*(y(1)+y(13))+params(11)*(T(5)*y(16)+T(6)*y(17))-T(3)*params(8)*(1/params(1)-1+params(5))*(y(5)+y(11)))/T(7);
end
