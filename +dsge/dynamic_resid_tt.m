function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 25);

T(1) = y(21)^(-params(2));
T(2) = (1+params(10))*y(14);
T(3) = T(1)/T(2);
T(4) = y(2)^(-params(2));
T(5) = T(4)/T(2);
T(6) = params(1)*T(3)/T(5);
T(7) = 1-params(5)+y(25)+y(23)*(y(24)-y(25));
T(8) = y(15)/y(14);
T(9) = 1/params(4);
T(10) = T(8)^(-params(2))*T(9);
T(11) = y(16)/y(14);
T(12) = 1/(1-params(4));
T(13) = T(11)^(-params(2))*T(12);
T(14) = T(9)*y(15)^(1-params(3))+T(12)*y(16)^(1-params(3));
T(15) = 1/(1-params(3));
T(16) = y(12)^params(6);
T(17) = params(3)/(params(3)-1);
T(18) = params(6)*y(10)/y(12);
T(19) = params(7)*y(11)/y(13);
T(20) = y(6)*(1-params(8))/(y(15)*y(20)*params(6));
T(21) = 1/(params(6)-1);
T(22) = T(20)^T(21);
T(23) = y(7)/(y(16)*params(12)*params(7));
T(24) = 1/(params(7)-1);
T(25) = T(23)^T(24);

end
