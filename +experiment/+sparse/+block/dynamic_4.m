function [y, T, residual, g1] = dynamic_4(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4)=(0.5/params(3))^(1/(1-params(2)));
  T(5)=((1-params(7))*(1/params(1)-1+params(4))/(T(4)*params(5)))^(1/(params(5)-1));
  T(6)=T(4)*(T(5))^params(5);
  residual(1)=(y(35)*(T(6)-(1-params(7))*(1/params(1)-1+params(4))*T(5)))-((y(33)+y(28))*T(6)-(y(24)+y(30))*(1-params(7))*(1/params(1)-1+params(4))*T(5));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=T(6)-(1-params(7))*(1/params(1)-1+params(4))*T(5);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
