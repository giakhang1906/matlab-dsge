function T = dynamic_g2_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g2_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 64);

T = dsge.dynamic_g1_tt(T, y, x, params, steady_state, it_);

T(53) = getPowerDeriv(y(15)/y(14),(-params(2)),2);
T(54) = getPowerDeriv(y(16)/y(14),(-params(2)),2);
T(55) = getPowerDeriv(T(11),1/(1-params(3)),2);
T(56) = getPowerDeriv(T(16),1/(params(6)-1),2);
T(57) = T(27)*(-((1-params(8))*y(20)*params(6)))/(y(15)*y(20)*params(6)*y(15)*y(20)*params(6))+T(26)*T(46)*T(56);
T(58) = T(27)*(-((1-params(8))*y(15)*params(6)))/(y(15)*y(20)*params(6)*y(15)*y(20)*params(6))+T(26)*T(51)*T(56);
T(59) = T(46)*T(46)*T(56)+T(27)*(-((-(y(6)*(1-params(8))*y(20)*params(6)))*(y(20)*params(6)*y(15)*y(20)*params(6)+y(20)*params(6)*y(15)*y(20)*params(6))))/(y(15)*y(20)*params(6)*y(15)*y(20)*params(6)*y(15)*y(20)*params(6)*y(15)*y(20)*params(6));
T(60) = T(46)*T(51)*T(56)+T(27)*(y(15)*y(20)*params(6)*y(15)*y(20)*params(6)*(-(params(6)*y(6)*(1-params(8))))-(-(y(6)*(1-params(8))*y(20)*params(6)))*(y(15)*y(20)*params(6)*y(15)*params(6)+y(15)*y(20)*params(6)*y(15)*params(6)))/(y(15)*y(20)*params(6)*y(15)*y(20)*params(6)*y(15)*y(20)*params(6)*y(15)*y(20)*params(6));
T(61) = T(51)*T(51)*T(56)+T(27)*(-((-(y(6)*(1-params(8))*y(15)*params(6)))*(y(15)*y(20)*params(6)*y(15)*params(6)+y(15)*y(20)*params(6)*y(15)*params(6))))/(y(15)*y(20)*params(6)*y(15)*y(20)*params(6)*y(15)*y(20)*params(6)*y(15)*y(20)*params(6));
T(62) = getPowerDeriv(y(7)/(y(16)*params(12)*params(7)),1/(params(7)-1),2);
T(63) = (-(T(29)*(-(params(12)*params(7)))/(y(16)*params(12)*params(7)*y(16)*params(12)*params(7))+T(28)*T(49)*T(62)));
T(64) = (-(T(49)*T(49)*T(62)+T(29)*(-((-(y(7)*params(12)*params(7)))*(params(12)*params(7)*y(16)*params(12)*params(7)+params(12)*params(7)*y(16)*params(12)*params(7))))/(y(16)*params(12)*params(7)*y(16)*params(12)*params(7)*y(16)*params(12)*params(7)*y(16)*params(12)*params(7))));

end
