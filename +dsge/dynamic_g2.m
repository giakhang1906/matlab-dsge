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
g2_i = zeros(31,1);
g2_j = zeros(31,1);
g2_v = zeros(31,1);

g2_i(1)=10;
g2_i(2)=10;
g2_i(3)=10;
g2_i(4)=10;
g2_i(5)=10;
g2_i(6)=10;
g2_i(7)=10;
g2_i(8)=10;
g2_i(9)=10;
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
g2_i(28)=19;
g2_i(29)=19;
g2_i(30)=19;
g2_i(31)=19;
g2_j(1)=140;
g2_j(2)=462;
g2_j(3)=236;
g2_j(4)=466;
g2_j(5)=284;
g2_j(6)=468;
g2_j(7)=356;
g2_j(8)=471;
g2_j(9)=476;
g2_j(10)=29;
g2_j(11)=98;
g2_j(12)=31;
g2_j(13)=146;
g2_j(14)=101;
g2_j(15)=103;
g2_j(16)=149;
g2_j(17)=110;
g2_j(18)=317;
g2_j(19)=115;
g2_j(20)=437;
g2_j(21)=140;
g2_j(22)=462;
g2_j(23)=158;
g2_j(24)=319;
g2_j(25)=163;
g2_j(26)=439;
g2_j(27)=284;
g2_j(28)=468;
g2_j(29)=452;
g2_j(30)=475;
g2_j(31)=476;
g2_v(1)=(-T(23));
g2_v(2)=g2_v(1);
g2_v(3)=T(25);
g2_v(4)=g2_v(3);
g2_v(5)=(-T(23));
g2_v(6)=g2_v(5);
g2_v(7)=T(25);
g2_v(8)=g2_v(7);
g2_v(9)=(-(T(23)*T(24)+T(7)*T(27)+T(23)*T(24)+T(6)*(-((-(params(3)*(y(15)+y(10))*params(6)*(params(3)-1)))*(params(6)*(params(3)-1)*y(20)*params(6)*(params(3)-1)+params(6)*(params(3)-1)*y(20)*params(6)*(params(3)-1))))/(y(20)*params(6)*(params(3)-1)*y(20)*params(6)*(params(3)-1)*y(20)*params(6)*(params(3)-1)*y(20)*params(6)*(params(3)-1))));
g2_v(10)=T(18);
g2_v(11)=g2_v(10);
g2_v(12)=T(19);
g2_v(13)=g2_v(12);
g2_v(14)=T(10)*T(11)*(y(5)+y(5))/(y(5)*y(5)*y(5)*y(5))-y(19)*T(10)*T(15)*(y(5)+y(5))/(y(5)*y(5)*y(5)*y(5));
g2_v(15)=T(10)*T(17)*params(10)*(y(2)+y(14))*1/(1+params(10))-y(19)*T(10)*T(17)*params(10)*1/(1+params(10));
g2_v(16)=g2_v(15);
g2_v(17)=T(18);
g2_v(18)=g2_v(17);
g2_v(19)=(-T(18));
g2_v(20)=g2_v(19);
g2_v(21)=(-(T(1)*params(8)*T(22)));
g2_v(22)=g2_v(21);
g2_v(23)=T(19);
g2_v(24)=g2_v(23);
g2_v(25)=(-T(19));
g2_v(26)=g2_v(25);
g2_v(27)=(-(T(1)*params(8)*T(22)));
g2_v(28)=g2_v(27);
g2_v(29)=(-(params(11)*(-T(23))-T(1)*params(8)*T(22)));
g2_v(30)=g2_v(29);
g2_v(31)=params(11)*(-T(27))-(T(1)*params(8)*(y(6)+y(12))*T(26)+y(19)*(params(11)*(-T(27))-T(1)*params(8)*T(26)));
g2 = sparse(g2_i,g2_j,g2_v,19,576);
end
