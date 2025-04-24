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
    T = test_2.static_resid_tt(T, y, x, params);
end
residual = zeros(19, 1);
residual(1) = (-(params(1)*T(3)*y(6)));
    residual(2) = (y(1)) - (T(12)*(T(3)*(y(6)+y(3))-params(4)*y(2)));
    residual(3) = (y(5)) - (y(6));
    residual(4) = (y(7)-y(1)) - ((-params(2))*(y(14)-y(13)));
    residual(5) = (y(8)-y(1)) - ((-params(2))*(y(15)-y(13)));
    residual(6) = (y(13)) - (0.65*y(14)+0.35*y(15));
    residual(7) = (y(3)) - (params(4)*y(2)+y(3)*(1-params(4)));
    residual(8) = (y(9)) - (y(19)+params(5)*y(11));
    residual(9) = (y(10)) - (params(6)*y(12));
    residual(10) = ((T(8)-(1-params(7))*T(3)*T(5))*y(16)) - (T(8)*(y(14)+y(9))-(1-params(7))*T(3)*T(5)*(y(5)+y(11)));
    residual(11) = (y(17)) - (T(9)*(y(15)+y(10))/(T(9)-T(3)*T(7))-T(3)*T(7)*(y(6)+y(12))/(T(9)-T(3)*T(7)));
    residual(12) = (y(14)+y(9)) - (y(5)+y(11));
    residual(13) = (y(15)+y(10)) - (y(6)+y(12));
    residual(14) = (y(11)) - (T(4)*(y(5)-y(19)-y(14)));
    residual(15) = (y(12)) - (T(6)*(y(6)-y(15)));
    residual(16) = (y(11)) - (y(3)+y(4));
    residual(17) = (y(12)) - (y(3)+y(4)*0.5);
    residual(18) = (y(19)) - (y(19)*params(8)+x(1));
    residual(19) = (y(18)) - ((T(10)*(y(1)+y(13))+params(10)*((T(8)-(1-params(7))*T(3)*T(5))*y(16)+(T(9)-T(3)*T(7))*y(17))-T(5)*params(7)*T(3)*(y(5)+y(11)))/T(11));

end
