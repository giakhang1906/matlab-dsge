function [y, T] = static_7(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(1)=(0.35/(1-params(4)))^(1/(1-params(3)));
  T(2)=((1/params(1)-1+params(5))/(T(1)*params(13)*params(7)))^(1/(params(7)-1));
  T(3)=T(1)*params(13)*(T(2))^params(7);
  y(17)=T(3)*(y(15)+y(10))/(T(3)-(1/params(1)-1+params(5))*T(2))-(1/params(1)-1+params(5))*T(2)*(y(6)+y(12))/(T(3)-(1/params(1)-1+params(5))*T(2));
end
