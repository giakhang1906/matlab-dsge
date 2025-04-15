function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = test.static_resid_tt(T, y, x, params);
end
residual = zeros(19, 1);
    residual(1) = (0) - ((1-params(1)*(1-params(5)))*y(5));
    residual(2) = (y(1)*(1/params(1)-1)/T(1)+params(5)*(y(2)-y(13))/T(1)) - (y(3)+y(6)-y(13));
    residual(3) = (y(5)) - (y(6));
    residual(4) = (y(7)-y(1)) - ((-params(3))*(y(14)-y(13)));
    residual(5) = (y(8)-y(1)) - ((-params(3))*(y(15)-y(13)));
    residual(6) = (y(13)) - (y(14)*0.5+y(15)*0.5);
    residual(7) = (y(3)) - (params(5)*y(2)+(1-params(5))*y(3));
    residual(8) = (y(9)) - (y(19)+params(6)*y(11));
    residual(9) = (y(10)) - (params(7)*y(12));
    residual(10) = (y(19)*params(6)*y(16)) - (T(2)*(T(3)*(y(14)+y(9))-y(19)*params(6)*(y(5)-y(11))));
    residual(11) = (y(17)) - (T(4)*(T(3)*(y(15)+y(10))/(params(7)*params(12))-y(6)-y(12)));
    residual(12) = (y(14)+y(9)) - (y(5)+y(11));
    residual(13) = (y(15)+y(10)) - (y(6)+y(12));
    residual(14) = (y(11)) - (T(5)*(y(5)-y(19)-y(14)));
    residual(15) = (y(12)) - (T(6)*(y(6)-y(15)));
    residual(16) = (y(11)) - (y(3)+y(4));
    residual(17) = (y(12)) - (y(3)+0.5*y(4));
    residual(18) = (y(19)) - (y(19)*params(9)+x(1));
    residual(19) = (y(18)*T(10)) - (T(7)*3*(y(6)-params(5))/(1+params(10))*params(10)*(y(1)+y(13))+params(11)*(y(16)*T(8)+y(17)*T(9))-T(7)*T(1)*(y(5)+y(11))*params(8));

end
