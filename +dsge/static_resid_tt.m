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

assert(length(T) >= 11);

T(1) = params(5)+1/params(1)-1;
T(2) = 1/(1/params(6)-1);
T(3) = params(3)/(params(3)-1);
T(4) = 1/(1/params(7)-1);
T(5) = 1/(params(6)-1);
T(6) = 1/(params(7)-1);
T(7) = (0.5/params(4))^(1/(1-params(3)));
T(8) = (T(1)*(1-params(8))/(y(19)*params(6)*T(7)))^T(5);
T(9) = (1/params(6)-1)*T(1)*(1-params(8))*T(8);
T(10) = (1/params(7)-1)*T(1)*(T(1)/(params(7)*params(12)*(0.5/(1-params(4)))^(1/(1-params(3)))))^T(6);
T(11) = 3*params(10)*(y(6)-params(5))/(1+params(10))*T(8)+params(11)*(T(9)+T(10))-T(8)*T(1)*params(8);

end
