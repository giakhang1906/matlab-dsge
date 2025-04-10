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

assert(length(T) >= 62);

T = dsge.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(26) = getPowerDeriv(y(2),(-params(2)),1);
T(27) = T(26)/T(2);
T(28) = (-(T(3)*T(27)));
T(29) = params(1)*T(28)/(T(5)*T(5));
T(30) = getPowerDeriv(y(21),(-params(2)),1);
T(31) = T(30)/T(2);
T(32) = params(1)*T(31)/T(5);
T(33) = (1-params(8))/(y(15)*y(20)*params(6));
T(34) = getPowerDeriv(T(20),T(21),1);
T(35) = 1/(y(16)*params(12)*params(7));
T(36) = getPowerDeriv(T(23),T(24),1);
T(37) = params(6)*1/y(12);
T(38) = (-(y(6)*(1-params(8))*T(37)));
T(39) = params(7)*1/y(13);
T(40) = (-(y(7)*T(39)));
T(41) = getPowerDeriv(y(12),params(6),1);
T(42) = params(6)*(-y(10))/(y(12)*y(12));
T(43) = params(7)*(-y(11))/(y(13)*y(13));
T(44) = T(2)*T(2);
T(45) = (-(T(1)*(1+params(10))))/T(44);
T(46) = (-((1+params(10))*T(4)))/T(44);
T(47) = params(1)*(T(5)*T(45)-T(3)*T(46))/(T(5)*T(5));
T(48) = (-y(15))/(y(14)*y(14));
T(49) = getPowerDeriv(T(8),(-params(2)),1);
T(50) = (-y(16))/(y(14)*y(14));
T(51) = getPowerDeriv(T(11),(-params(2)),1);
T(52) = 1/y(14);
T(53) = T(9)*getPowerDeriv(y(15),1-params(3),1);
T(54) = getPowerDeriv(T(14),T(15),1);
T(55) = y(15)*y(20)*params(6)*y(15)*y(20)*params(6);
T(56) = (-(y(6)*(1-params(8))*y(20)*params(6)))/T(55);
T(57) = T(34)*T(56);
T(58) = T(12)*getPowerDeriv(y(16),1-params(3),1);
T(59) = (-(y(7)*params(12)*params(7)))/(y(16)*params(12)*params(7)*y(16)*params(12)*params(7));
T(60) = (-(T(36)*T(59)));
T(61) = (-(y(6)*(1-params(8))*y(15)*params(6)))/T(55);
T(62) = T(34)*T(61);

end
