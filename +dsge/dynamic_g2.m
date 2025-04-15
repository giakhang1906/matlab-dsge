function g2 = dynamic_g2(T, y, x, params, steady_state, it_, T_flag)
% function g2 = dynamic_g2(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g2
%

if T_flag
    T = dsge.dynamic_g2_tt(T, y, x, params, steady_state, it_);
end
g2_i = zeros(27,1);
g2_j = zeros(27,1);
g2_v = zeros(27,1);

g2_i(1)=10;
g2_i(2)=10;
g2_i(3)=10;
g2_i(4)=10;
g2_i(5)=10;
g2_i(6)=10;
g2_i(7)=19;
g2_i(8)=19;
g2_i(9)=19;
g2_i(10)=19;
g2_i(11)=19;
g2_i(12)=19;
g2_i(13)=19;
g2_i(14)=19;
g2_i(15)=19;
g2_i(16)=19;
g2_i(17)=19;
g2_i(18)=19;
g2_i(19)=19;
g2_i(20)=19;
g2_i(21)=19;
g2_i(22)=19;
g2_i(23)=19;
g2_i(24)=19;
g2_i(25)=19;
g2_i(26)=19;
g2_i(27)=19;
g2_j(1)=222;
g2_j(2)=534;
g2_j(3)=47;
g2_j(4)=527;
g2_j(5)=472;
g2_j(6)=544;
g2_j(7)=110;
g2_j(8)=230;
g2_j(9)=122;
g2_j(10)=530;
g2_j(11)=222;
g2_j(12)=534;
g2_j(13)=241;
g2_j(14)=385;
g2_j(15)=246;
g2_j(16)=510;
g2_j(17)=247;
g2_j(18)=535;
g2_j(19)=372;
g2_j(20)=540;
g2_j(21)=397;
g2_j(22)=541;
g2_j(23)=472;
g2_j(24)=544;
g2_j(25)=522;
g2_j(26)=546;
g2_j(27)=547;
g2_v(1)=(-(T(3)*(-params(6))));
g2_v(2)=g2_v(1);
g2_v(3)=(-(params(6)*T(3)));
g2_v(4)=g2_v(3);
g2_v(5)=params(6);
g2_v(6)=g2_v(5);
g2_v(7)=(-T(16));
g2_v(8)=g2_v(7);
g2_v(9)=(-(T(8)*T(19)));
g2_v(10)=g2_v(9);
g2_v(11)=T(1)*params(8)*T(19);
g2_v(12)=g2_v(11);
g2_v(13)=(-T(16));
g2_v(14)=g2_v(13);
g2_v(15)=T(16);
g2_v(16)=g2_v(15);
g2_v(17)=y(21)*3*params(10)*1/(1+params(10))*T(19)-3*params(10)*(y(5)+y(16))*1/(1+params(10))*T(19);
g2_v(18)=g2_v(17);
g2_v(19)=T(1)*params(8)*T(19);
g2_v(20)=g2_v(19);
g2_v(21)=(-(T(8)*T(19)));
g2_v(22)=g2_v(21);
g2_v(23)=(-(params(11)*T(2)*T(1)*(1-params(8))*T(19)));
g2_v(24)=g2_v(23);
g2_v(25)=T(20);
g2_v(26)=g2_v(25);
g2_v(27)=y(21)*(T(8)*T(21)+params(11)*T(2)*T(1)*(1-params(8))*T(21)-T(1)*params(8)*T(21))-(T(15)*T(21)+params(11)*y(19)*T(2)*T(1)*(1-params(8))*T(21)-T(1)*params(8)*(y(9)+y(15))*T(21));
g2 = sparse(g2_i,g2_j,g2_v,19,625);
end
