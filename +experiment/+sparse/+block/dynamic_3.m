function [y, T] = dynamic_3(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(1)=(0.5/(1-params(3)))^(1/(1-params(2)));
  T(2)=((1/params(1)-1+params(4))/(T(1)*params(12)*params(6)))^(1/(params(6)-1));
  T(3)=T(1)*params(12)*(T(2))^params(6);
  y(36)=(y(34)+y(29))*T(3)/(T(3)-(1/params(1)-1+params(4))*T(2))-(y(25)+y(31))*(1/params(1)-1+params(4))*T(2)/(T(3)-(1/params(1)-1+params(4))*T(2));
end
