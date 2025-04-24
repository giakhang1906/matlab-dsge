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

assert(length(T) >= 12);

T(1) = (0.65/params(3))^(1/(1-params(2)));
T(2) = (0.35/(1-params(3)))^(1/(1-params(2)));
T(3) = 1/params(1)-1+params(4);
T(4) = 1/(params(5)-1);
T(5) = ((1-params(7))*T(3)/(T(1)*params(5)))^T(4);
T(6) = 1/(params(6)-1);
T(7) = (T(3)/(T(2)*params(11)*params(6)))^T(6);
T(8) = T(1)*(T(5))^params(5);
T(9) = T(2)*params(11)*(T(7))^params(6);
T(10) = params(9)*T(5)*(1/params(1)-1)/(1+params(9))*0.3333333333333333;
T(11) = T(10)+params(10)*(T(8)-(1-params(7))*T(3)*T(5)+T(9)-T(3)*T(7))-T(5)*params(7)*T(3);
T(12) = (1+params(9))/(1/params(1)-1);

end
