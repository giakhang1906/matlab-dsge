function [y, T, residual, g1] = static_12(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2)=(T(1)*(1-params(8))/(y(19)*params(6)*(0.5/params(4))^(1/(1-params(3)))))^(1/(params(6)-1));
  T(3)=(1/params(7)-1)*T(1)*(T(1)/(params(7)*params(12)*(0.5/(1-params(4)))^(1/(1-params(3)))))^(1/(params(7)-1));
  T(4)=3*params(10)*(y(6)-params(5))/(1+params(10))*T(2)+params(11)*((1/params(6)-1)*T(1)*(1-params(8))*T(2)+T(3))-T(2)*T(1)*params(8);
  residual(1)=(y(18)*T(4))-(T(2)*3*(y(6)-params(5))/(1+params(10))*params(10)*(y(1)+y(13))+params(11)*(y(16)*(1/params(6)-1)*T(1)*(1-params(8))*T(2)+y(17)*T(3))-T(2)*T(1)*(y(5)+y(11))*params(8));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=T(4);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
