function [y, T, residual, g1] = static_4(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(3, 1);
  residual(1)=(y(11))-(1/(params(5)-1)*(y(5)-y(19)-y(14)));
  residual(2)=(y(9))-(y(19)+params(5)*y(11));
  residual(3)=(y(14)+y(9))-(y(5)+y(11));
if nargout > 3
    g1_v = NaN(7, 1);
g1_v(1)=1/(params(5)-1);
g1_v(2)=1;
g1_v(3)=1;
g1_v(4)=1;
g1_v(5)=1;
g1_v(6)=(-params(5));
g1_v(7)=(-1);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 3, 3);
end
end
