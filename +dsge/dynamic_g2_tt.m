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

assert(length(T) >= 130);

T = dsge.dynamic_g1_tt(T, y, x, params, steady_state, it_);

T(63) = getPowerDeriv(y(2),(-params(2)),2);
T(64) = T(63)/T(2);
T(65) = (-(T(3)*T(64)));
T(66) = T(5)*T(27)+T(5)*T(27);
T(67) = T(5)*T(5)*T(5)*T(5);
T(68) = params(1)*(T(5)*T(5)*T(65)-T(28)*T(66))/T(67);
T(69) = params(1)*(-(T(27)*T(31)))/(T(5)*T(5));
T(70) = (-((1+params(10))*T(26)))/T(44);
T(71) = T(5)*T(46)+T(5)*T(46);
T(72) = params(1)*(T(5)*T(5)*(-(T(27)*T(45)+T(3)*T(70)))-T(28)*T(71))/T(67);
T(73) = getPowerDeriv(y(21),(-params(2)),2);
T(74) = T(73)/T(2);
T(75) = params(1)*T(74)/T(5);
T(76) = (-((1+params(10))*T(30)))/T(44);
T(77) = params(1)*(T(5)*T(76)-T(31)*T(46))/(T(5)*T(5));
T(78) = (1+params(10))*T(2)+(1+params(10))*T(2);
T(79) = (-((-(T(1)*(1+params(10))))*T(78)))/(T(44)*T(44));
T(80) = (-((-((1+params(10))*T(4)))*T(78)))/(T(44)*T(44));
T(81) = T(5)*T(5)*(T(45)*T(46)+T(5)*T(79)-(T(45)*T(46)+T(3)*T(80)))-(T(5)*T(45)-T(3)*T(46))*T(71);
T(82) = params(1)*T(81)/T(67);
T(83) = (-((-y(15))*(y(14)+y(14))))/(y(14)*y(14)*y(14)*y(14));
T(84) = getPowerDeriv(T(8),(-params(2)),2);
T(85) = T(9)*(T(49)*T(83)+T(48)*T(48)*T(84));
T(86) = (-1)/(y(14)*y(14));
T(87) = (-((-y(16))*(y(14)+y(14))))/(y(14)*y(14)*y(14)*y(14));
T(88) = getPowerDeriv(T(11),(-params(2)),2);
T(89) = T(12)*(T(51)*T(87)+T(50)*T(50)*T(88));
T(90) = T(9)*getPowerDeriv(y(15),1-params(3),2);
T(91) = getPowerDeriv(T(14),T(15),2);
T(92) = T(12)*getPowerDeriv(y(16),1-params(3),2);
T(93) = getPowerDeriv(y(12),params(6),2);
T(94) = (-((1-params(8))*T(37)));
T(95) = T(18)*T(37)+T(18)*T(37);
T(96) = T(18)*T(18)*T(18)*T(18);
T(97) = params(6)*(-1)/(y(12)*y(12));
T(98) = (-(y(6)*(1-params(8))*T(97)));
T(99) = T(18)*T(42)+T(18)*T(42);
T(100) = params(6)*(-((-y(10))*(y(12)+y(12))))/(y(12)*y(12)*y(12)*y(12));
T(101) = T(19)*T(39)+T(19)*T(39);
T(102) = T(19)*T(19)*T(19)*T(19);
T(103) = params(7)*(-1)/(y(13)*y(13));
T(104) = (-(y(7)*T(103)));
T(105) = T(19)*T(43)+T(19)*T(43);
T(106) = params(7)*(-((-y(11))*(y(13)+y(13))))/(y(13)*y(13)*y(13)*y(13));
T(107) = getPowerDeriv(T(20),T(21),2);
T(108) = (-((1-params(8))*y(20)*params(6)))/T(55);
T(109) = T(34)*T(108)+T(33)*T(56)*T(107);
T(110) = (-((1-params(8))*y(15)*params(6)))/T(55);
T(111) = T(34)*T(110)+T(33)*T(61)*T(107);
T(112) = y(20)*params(6)*y(15)*y(20)*params(6)+y(20)*params(6)*y(15)*y(20)*params(6);
T(113) = (-((-(y(6)*(1-params(8))*y(20)*params(6)))*T(112)));
T(114) = T(55)*T(55);
T(115) = T(113)/T(114);
T(116) = T(56)*T(56)*T(107)+T(34)*T(115);
T(117) = y(15)*y(20)*params(6)*y(15)*params(6)+y(15)*y(20)*params(6)*y(15)*params(6);
T(118) = (T(55)*(-(params(6)*y(6)*(1-params(8))))-(-(y(6)*(1-params(8))*y(20)*params(6)))*T(117))/T(114);
T(119) = T(56)*T(61)*T(107)+T(34)*T(118);
T(120) = (-((-(y(6)*(1-params(8))*y(15)*params(6)))*T(117)))/T(114);
T(121) = T(61)*T(61)*T(107)+T(34)*T(120);
T(122) = getPowerDeriv(T(23),T(24),2);
T(123) = (-(params(12)*params(7)))/(y(16)*params(12)*params(7)*y(16)*params(12)*params(7));
T(124) = (-(T(36)*T(123)+T(35)*T(59)*T(122)));
T(125) = params(12)*params(7)*y(16)*params(12)*params(7)+params(12)*params(7)*y(16)*params(12)*params(7);
T(126) = (-((-(y(7)*params(12)*params(7)))*T(125)));
T(127) = y(16)*params(12)*params(7)*y(16)*params(12)*params(7)*y(16)*params(12)*params(7)*y(16)*params(12)*params(7);
T(128) = T(126)/T(127);
T(129) = (-(T(59)*T(59)*T(122)+T(36)*T(128)));
T(130) = y(5)*y(5)*y(5)*y(5);

end
