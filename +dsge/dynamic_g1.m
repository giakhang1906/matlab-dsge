function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
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
%   g1
%

if T_flag
    T = dsge.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(19, 24);
g1(1,2)=(-1);
g1(1,21)=1;
g1(1,23)=(-(1-params(1)*(1-params(5))));
g1(2,2)=(1/params(1)-1)/T(1);
g1(2,3)=params(5)/T(1);
g1(2,14)=(-params(5))/T(1);
g1(3,6)=1;
g1(3,7)=(-1);
g1(4,2)=(-1);
g1(4,8)=1;
g1(4,14)=(-params(3));
g1(4,15)=params(3);
g1(5,2)=(-1);
g1(5,9)=1;
g1(5,14)=(-params(3));
g1(5,16)=params(3);
g1(6,14)=1;
g1(6,15)=(-0.5);
g1(6,16)=(-0.5);
g1(7,3)=(-params(5));
g1(7,4)=(-(1-params(5)));
g1(7,22)=1;
g1(8,10)=1;
g1(8,12)=(-params(6));
g1(8,20)=(-1);
g1(9,11)=1;
g1(9,13)=(-params(7));
g1(10,6)=T(6);
g1(10,10)=(-(T(6)*params(3)/(y(20)*params(6)*(params(3)-1))));
g1(10,12)=T(6);
g1(10,15)=(-(T(6)*params(3)/(y(20)*params(6)*(params(3)-1))));
g1(10,17)=1;
g1(10,20)=(-(T(7)*T(23)+T(6)*T(24)));
g1(11,7)=T(1)*T(10);
g1(11,11)=(-(T(1)*T(10)*params(3)/(params(12)*params(7)*(params(3)-1))));
g1(11,13)=T(1)*T(10);
g1(11,16)=(-(T(1)*T(10)*params(3)/(params(12)*params(7)*(params(3)-1))));
g1(11,18)=1;
g1(12,6)=(-1);
g1(12,10)=1;
g1(12,12)=(-1);
g1(12,15)=1;
g1(13,7)=(-1);
g1(13,11)=1;
g1(13,13)=(-1);
g1(13,16)=1;
g1(14,6)=(-T(4));
g1(14,12)=1;
g1(14,15)=T(4);
g1(14,20)=T(4);
g1(15,7)=(-T(9));
g1(15,13)=1;
g1(15,16)=T(9);
g1(16,4)=(-1);
g1(16,5)=(-1);
g1(16,12)=1;
g1(17,4)=(-1);
g1(17,5)=(-0.5);
g1(17,13)=1;
g1(18,1)=(-params(9));
g1(18,20)=1;
g1(18,24)=(-1);
g1(19,2)=T(16);
g1(19,5)=T(10)*T(11)*T(17)-y(19)*T(18);
g1(19,6)=(-(T(5)*T(1)*params(8)));
g1(19,7)=T(10)*T(12)*params(10)*(y(2)+y(14))*1/(1+params(10))-y(19)*T(19);
g1(19,12)=(-(T(5)*T(1)*params(8)));
g1(19,14)=T(16);
g1(19,17)=params(11)*T(2)*T(13);
g1(19,18)=params(11)*T(8)*params(12)*T(14);
g1(19,19)=(-(T(16)+params(11)*(T(2)*T(13)-T(6)+T(8)*params(12)*T(14)-T(1)*T(10))-T(5)*T(1)*params(8)));
g1(19,20)=params(11)*(-T(23))-(T(1)*params(8)*(y(6)+y(12))*T(22)+y(19)*(params(11)*(-T(23))-T(1)*params(8)*T(22)));

end
