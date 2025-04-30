function [y, T, residual, g1] = static_8(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4)=(0.65/params(4))^(1/(1-params(3)));
  T(5)=((1-params(8))*(1/params(1)-1+params(5))/(T(4)*params(6)))^(1/(params(6)-1));
  T(6)=T(4)*(T(5))^params(6);
  residual(1)=((T(6)-(1-params(8))*(1/params(1)-1+params(5))*T(5))*y(16))-(T(6)*(y(14)+y(9))-(1-params(8))*(1/params(1)-1+params(5))*T(5)*(y(5)+y(11)));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=T(6)-(1-params(8))*(1/params(1)-1+params(5))*T(5);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
