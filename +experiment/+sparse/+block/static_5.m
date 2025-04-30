function [y, T, residual, g1] = static_5(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(3, 1);
  residual(1)=(y(12))-(1/(params(7)-1)*(y(6)-y(15)));
  residual(2)=(y(10))-(params(7)*y(12));
  residual(3)=(y(15)+y(10))-(y(6)+y(12));
if nargout > 3
    g1_v = NaN(7, 1);
g1_v(1)=1;
g1_v(2)=(-params(7));
g1_v(3)=(-1);
g1_v(4)=1;
g1_v(5)=1;
g1_v(6)=1/(params(7)-1);
g1_v(7)=1;
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 3, 3);
end
end
