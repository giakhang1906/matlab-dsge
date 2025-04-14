function [y, T, residual, g1] = static_11(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(7)=(T(3))^params(6);
  T(8)=(T(3))^params(7);
  T(9)=T(3)*1/y(4)*params(10)*(y(6)-params(5))/(1+params(10))+params(11)*(T(4)*T(7)-T(6)+T(2)*params(12)*T(8)-T(1)*T(3))-T(5)*T(1)*params(8);
  residual(1)=(T(3)*params(10)*(y(1)+y(13))*(y(6)-params(5))/(1+params(10))*1/y(4)+params(11)*(T(4)*y(16)*T(7)-T(6)+T(2)*y(17)*params(12)*T(8)-T(1)*T(3)))-(T(5)*T(1)*params(8)*(y(5)+y(11))+y(18)*T(9));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=(-T(9));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
