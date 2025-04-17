function T = static_resid_tt(T, y, x, params)
% function T = static_resid_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

assert(length(T) >= 14);

T(1) = (0.5/params(4))^(1/(1-params(3)));
T(2) = (0.5/(1-params(4)))^(1/(1-params(3)));
T(3) = 1/params(1)-1+params(5);
T(4) = 1/(params(6)-1);
T(5) = ((1-params(8))*T(3)/(T(1)*params(6)))^T(4);
T(6) = 1/(params(7)-1);
T(7) = (T(3)/(T(2)*params(12)*params(7)))^T(6);
T(8) = T(1)*(T(5))^params(6)-(1-params(8))*T(3)*T(5);
T(9) = T(2)*params(12)*(T(7))^params(7)-T(3)*T(7);
T(10) = params(10)*T(5)*(1/params(1)-1)/(1+params(10))*0.3333333333333333;
T(11) = (1+params(10))/(1/params(1)-1);
T(12) = 1/(1/params(6)-1);
T(13) = params(3)/(params(3)-1);
T(14) = 1/(1/params(7)-1);

end
