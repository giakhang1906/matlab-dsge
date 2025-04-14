function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 24);

T = dsge.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(17) = (-1)/(y(5)*y(5));
T(18) = T(10)*T(15)*T(17);
T(19) = T(10)*T(12)*params(10)*1/(1+params(10));
T(20) = (-(T(1)*(1-params(8))*params(6)*T(2)))/(y(20)*params(6)*T(2)*y(20)*params(6)*T(2));
T(21) = getPowerDeriv(T(3),T(4),1);
T(22) = T(20)*T(21);
T(23) = T(1)*(1-params(8))*T(22);
T(24) = (-(params(3)*(y(15)+y(10))*params(6)*(params(3)-1)))/(y(20)*params(6)*(params(3)-1)*y(20)*params(6)*(params(3)-1));

end
