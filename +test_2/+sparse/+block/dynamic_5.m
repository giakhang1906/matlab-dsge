function [y, T] = dynamic_5(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(32)=0.5*y(33)+0.5*y(34);
  T(7)=params(9)*(1/params(1)-1)/(1+params(9))*0.3333333333333333*T(5)+params(10)*(T(6)-(1-params(7))*(1/params(1)-1+params(4))*T(5)+T(3)-(1/params(1)-1+params(4))*T(2))-params(7)*(1/params(1)-1+params(4))*T(5);
  y(37)=((y(20)+y(32))*params(9)*(1/params(1)-1)/(1+params(9))*0.3333333333333333*T(5)+params(10)*(y(35)*(T(6)-(1-params(7))*(1/params(1)-1+params(4))*T(5))+y(36)*(T(3)-(1/params(1)-1+params(4))*T(2)))-(y(24)+y(30))*params(7)*(1/params(1)-1+params(4))*T(5))/T(7);
end
