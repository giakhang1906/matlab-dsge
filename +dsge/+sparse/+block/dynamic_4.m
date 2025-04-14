function [y, T, residual, g1] = dynamic_4(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(7)=(T(3))^params(6);
  T(8)=(T(3))^params(7);
  T(9)=T(3)*1/y(23)*params(10)*(y(25)-params(5))/(1+params(10))+params(11)*(T(4)*T(7)-T(6)+T(2)*params(12)*T(8)-T(1)*T(3))-T(5)*T(1)*params(8);
  residual(1)=(T(3)*params(10)*(y(20)+y(32))*(y(25)-params(5))/(1+params(10))*1/y(23)+params(11)*(T(4)*y(35)*T(7)-T(6)+T(2)*y(36)*params(12)*T(8)-T(1)*T(3)))-(T(5)*T(1)*params(8)*(y(24)+y(30))+y(37)*T(9));
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
