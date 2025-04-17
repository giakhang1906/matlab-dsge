function [y, T] = dynamic_5(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(32)=0.5*y(33)+0.5*y(34);
  T(1)=(0.5/params(4))^(1/(1-params(3)));
  T(2)=(0.5/(1-params(4)))^(1/(1-params(3)));
  T(3)=((1-params(8))*(1/params(1)-1+params(5))/(T(1)*params(6)))^(1/(params(6)-1));
  T(4)=((1/params(1)-1+params(5))/(T(2)*params(12)*params(7)))^(1/(params(7)-1));
  T(5)=T(1)*(T(3))^params(6)-(1-params(8))*(1/params(1)-1+params(5))*T(3);
  T(6)=T(2)*params(12)*(T(4))^params(7)-(1/params(1)-1+params(5))*T(4);
  T(7)=params(10)*(1/params(1)-1)/(1+params(10))*0.3333333333333333*T(3)+params(11)*(T(5)+T(6))-params(8)*(1/params(1)-1+params(5))*T(3);
  y(37)=((y(20)+y(32))*params(10)*(1/params(1)-1)/(1+params(10))*0.3333333333333333*T(3)+params(11)*(y(35)*T(5)+y(36)*T(6))-(y(24)+y(30))*params(8)*(1/params(1)-1+params(5))*T(3))/T(7);
end
