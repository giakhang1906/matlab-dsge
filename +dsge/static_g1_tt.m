function T = static_g1_tt(T, y, x, params)
% function T = static_g1_tt(T, y, x, params)
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

assert(length(T) >= 19);

T = dsge.static_resid_tt(T, y, x, params);

T(12) = getPowerDeriv(y(5)*(1-params(8))/(y(14)*y(19)*params(6)),1/(params(6)-1),1);
T(13) = getPowerDeriv(y(6)/(y(15)*params(12)*params(7)),1/(params(7)-1),1);
T(14) = getPowerDeriv(y(14)/y(13),(-params(2)),1);
T(15) = getPowerDeriv(y(15)/y(13),(-params(2)),1);
T(16) = getPowerDeriv(T(5),1/(1-params(3)),1);
T(17) = T(12)*(-(y(5)*(1-params(8))*y(19)*params(6)))/(y(14)*y(19)*params(6)*y(14)*y(19)*params(6));
T(18) = (-(T(13)*(-(y(6)*params(12)*params(7)))/(y(15)*params(12)*params(7)*y(15)*params(12)*params(7))));
T(19) = T(12)*(-(y(5)*(1-params(8))*y(14)*params(6)))/(y(14)*y(19)*params(6)*y(14)*y(19)*params(6));

end
