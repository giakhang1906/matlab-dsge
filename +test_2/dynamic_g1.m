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
    T = test_2.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(19, 25);
g1(1,4)=(-1);
g1(1,23)=1;
g1(1,24)=(-(1-params(1)*(1-params(5))));
g1(2,4)=1;
g1(2,5)=(-(T(6)*(-params(5))));
g1(2,6)=(-(T(3)*T(6)));
g1(2,9)=(-(T(3)*T(6)));
g1(3,8)=1;
g1(3,9)=(-1);
g1(4,4)=(-1);
g1(4,10)=1;
g1(4,16)=(-params(3));
g1(4,17)=params(3);
g1(5,4)=(-1);
g1(5,11)=1;
g1(5,16)=(-params(3));
g1(5,18)=params(3);
g1(6,16)=1;
g1(6,17)=(-0.5);
g1(6,18)=(-0.5);
g1(7,5)=(-params(5));
g1(7,1)=(-(1-params(5)));
g1(7,6)=1;
g1(8,12)=1;
g1(8,14)=(-params(6));
g1(8,22)=(-1);
g1(9,13)=1;
g1(9,15)=(-params(7));
g1(10,8)=(-(T(7)*(-params(6))));
g1(10,12)=(-(T(7)*T(8)));
g1(10,14)=(-(params(6)*T(7)));
g1(10,17)=(-(T(7)*T(8)));
g1(10,19)=params(6);
g1(11,9)=T(9);
g1(11,13)=(-(T(9)*T(8)*1/(params(12)*params(7))));
g1(11,2)=T(9);
g1(11,18)=(-(T(9)*T(8)*1/(params(12)*params(7))));
g1(11,20)=1;
g1(12,8)=(-1);
g1(12,12)=1;
g1(12,14)=(-1);
g1(12,17)=1;
g1(13,9)=(-1);
g1(13,13)=1;
g1(13,15)=(-1);
g1(13,18)=1;
g1(14,8)=(-T(4));
g1(14,14)=1;
g1(14,17)=T(4);
g1(14,22)=T(4);
g1(15,9)=(-T(5));
g1(15,15)=1;
g1(15,18)=T(5);
g1(16,6)=(-1);
g1(16,7)=(-1);
g1(16,14)=1;
g1(17,6)=(-1);
g1(17,7)=(-0.5);
g1(17,15)=1;
g1(18,3)=(-params(9));
g1(18,22)=1;
g1(18,25)=(-1);
g1(19,4)=(-(T(14)/(T(14)+params(11)*(T(12)+T(13))-params(8)*T(3)*T(10))));
g1(19,8)=T(15);
g1(19,14)=T(15);
g1(19,16)=(-(T(14)/(T(14)+params(11)*(T(12)+T(13))-params(8)*T(3)*T(10))));
g1(19,19)=(-(params(11)*T(12)/(T(14)+params(11)*(T(12)+T(13))-params(8)*T(3)*T(10))));
g1(19,20)=(-(params(11)*T(13)/(T(14)+params(11)*(T(12)+T(13))-params(8)*T(3)*T(10))));
g1(19,21)=1;

end
