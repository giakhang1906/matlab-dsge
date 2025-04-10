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

assert(length(T) >= 52);

T = dsge.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(19) = getPowerDeriv(y(2),(-params(2)),1);
T(20) = T(19)/((1+params(10))*y(14));
T(21) = (-(T(2)*T(20)));
T(22) = params(1)*T(21)/(T(4)*T(4));
T(23) = getPowerDeriv(y(21),(-params(2)),1);
T(24) = T(23)/((1+params(10))*y(14));
T(25) = params(1)*T(24)/T(4);
T(26) = (1-params(8))/(y(15)*y(20)*params(6));
T(27) = getPowerDeriv(T(16),1/(params(6)-1),1);
T(28) = 1/(y(16)*params(12)*params(7));
T(29) = getPowerDeriv(y(7)/(y(16)*params(12)*params(7)),1/(params(7)-1),1);
T(30) = (-(y(6)*(1-params(8))*params(6)*1/y(12)));
T(31) = (-(y(7)*params(7)*1/y(13)));
T(32) = getPowerDeriv(y(12),params(6),1);
T(33) = params(6)*(-y(10))/(y(12)*y(12));
T(34) = params(7)*(-y(11))/(y(13)*y(13));
T(35) = (1+params(10))*y(14)*(1+params(10))*y(14);
T(36) = (-(T(1)*(1+params(10))))/T(35);
T(37) = (-((1+params(10))*T(3)))/T(35);
T(38) = params(1)*(T(4)*T(36)-T(2)*T(37))/(T(4)*T(4));
T(39) = (-y(15))/(y(14)*y(14));
T(40) = getPowerDeriv(y(15)/y(14),(-params(2)),1);
T(41) = (-y(16))/(y(14)*y(14));
T(42) = getPowerDeriv(y(16)/y(14),(-params(2)),1);
T(43) = 1/y(14);
T(44) = T(7)*getPowerDeriv(y(15),1-params(3),1);
T(45) = getPowerDeriv(T(11),1/(1-params(3)),1);
T(46) = (-(y(6)*(1-params(8))*y(20)*params(6)))/(y(15)*y(20)*params(6)*y(15)*y(20)*params(6));
T(47) = T(27)*T(46);
T(48) = T(9)*getPowerDeriv(y(16),1-params(3),1);
T(49) = (-(y(7)*params(12)*params(7)))/(y(16)*params(12)*params(7)*y(16)*params(12)*params(7));
T(50) = (-(T(29)*T(49)));
T(51) = (-(y(6)*(1-params(8))*y(15)*params(6)))/(y(15)*y(20)*params(6)*y(15)*y(20)*params(6));
T(52) = T(27)*T(51);

end
