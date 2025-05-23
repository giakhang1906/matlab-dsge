function [y, T, residual, g1] = static_6(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(2, 1);
  residual(1)=(y(12))-(y(3)+0.5*y(4));
  residual(2)=(y(11))-(y(3)+y(4));
if nargout > 3
    g1_v = NaN(4, 1);
g1_v(1)=(-0.5);
g1_v(2)=(-1);
g1_v(3)=(-1);
g1_v(4)=(-1);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 2, 2);
end
end
