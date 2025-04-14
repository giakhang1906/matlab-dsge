function [y, T] = dynamic_3(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(2)=(0.5/(1-params(4)))^(1/(1-params(3)));
  T(3)=(T(1)/(params(7)*params(12)*T(2)))^(1/(params(7)-1));
  y(36)=T(1)*T(3)*(y(25)+y(31)+params(3)*(y(34)+y(29))/(params(12)*params(7)*(params(3)-1)));
  T(4)=(0.5/params(4))^(1/(1-params(3)));
  T(5)=(T(1)*(1-params(8))/(y(38)*params(6)*T(4)))^(1/(params(6)-1));
  T(6)=T(1)*(1-params(8))*T(5);
  y(35)=T(6)*(y(24)+y(30)+params(3)*(y(33)+y(28))/(y(38)*params(6)*(params(3)-1)));
end
