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
    T = test.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(19, 29);
g1(1,1)=(-1);
g1(1,14)=1;
g1(1,18)=(-(1-params(1)*(1-params(5))));
g1(2,1)=1;
g1(2,2)=(-(T(6)*(-params(5))));
g1(2,3)=(-(T(3)*T(6)));
g1(2,5)=(-(T(3)*T(6)));
g1(3,4)=1;
g1(3,5)=(-1);
g1(4,1)=(-1);
g1(4,6)=1;
g1(4,10)=(-params(3));
g1(4,11)=params(3);
g1(5,1)=(-1);
g1(5,7)=1;
g1(5,10)=(-params(3));
g1(5,12)=params(3);
g1(6,10)=1;
g1(6,11)=(-0.5);
g1(6,12)=(-0.5);
g1(7,15)=(-params(5));
g1(7,3)=(-(1-params(5)));
g1(7,16)=1;
g1(8,20)=1;
g1(8,8)=(-params(6));
g1(8,28)=(-1);
g1(9,21)=1;
g1(9,9)=(-params(7));
g1(10,18)=(-(T(7)*(-params(6))));
g1(10,20)=(-(T(7)*T(8)));
g1(10,8)=(-(params(6)*T(7)));
g1(10,23)=(-(T(7)*T(8)));
g1(10,25)=params(6);
g1(11,19)=T(9);
g1(11,21)=(-(T(9)*T(8)*1/(params(12)*params(7))));
g1(11,9)=T(9);
g1(11,24)=(-(T(9)*T(8)*1/(params(12)*params(7))));
g1(11,26)=1;
g1(12,18)=(-1);
g1(12,20)=1;
g1(12,8)=(-1);
g1(12,23)=1;
g1(13,19)=(-1);
g1(13,21)=1;
g1(13,9)=(-1);
g1(13,24)=1;
g1(14,18)=(-T(4));
g1(14,8)=1;
g1(14,23)=T(4);
g1(14,28)=T(4);
g1(15,19)=(-T(5));
g1(15,9)=1;
g1(15,24)=T(5);
g1(16,3)=(-1);
g1(16,17)=(-1);
g1(16,8)=1;
g1(17,3)=(-1);
g1(17,17)=(-0.5);
g1(17,9)=1;
g1(18,13)=(-params(9));
g1(18,28)=1;
g1(18,29)=(-1);
g1(19,14)=(-(T(14)/(T(14)+params(11)*(T(12)+T(13))-params(8)*T(3)*T(10))));
g1(19,18)=T(15);
g1(19,8)=T(15);
g1(19,22)=(-(T(14)/(T(14)+params(11)*(T(12)+T(13))-params(8)*T(3)*T(10))));
g1(19,25)=(-(params(11)*T(12)/(T(14)+params(11)*(T(12)+T(13))-params(8)*T(3)*T(10))));
g1(19,26)=(-(params(11)*T(13)/(T(14)+params(11)*(T(12)+T(13))-params(8)*T(3)*T(10))));
g1(19,27)=1;

end
