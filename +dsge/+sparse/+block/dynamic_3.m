function [y, T] = dynamic_3(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(36)=y(34)*y(29)-y(25)*y(31);
  y(35)=y(33)*y(28)-y(30)*y(24)*(1-params(8));
  y(37)=y(20)*params(10)*y(32)+params(11)*(y(35)+y(36))-y(30)*y(24)*params(8);
  y(27)=y(20)*(y(34)/y(32))^(-params(2))*1/(1-params(4));
  y(26)=y(20)*(y(33)/y(32))^(-params(2))*1/params(4);
end
