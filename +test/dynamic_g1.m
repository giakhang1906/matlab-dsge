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
g1 = zeros(19, 23);
g1(1,1)=(-1);
g1(1,6)=1;
g1(1,10)=(-(1-params(1)*(1-params(5))));
g1(2,6)=1;
g1(2,7)=(-(T(6)*(-params(5))));
g1(2,2)=(-(T(3)*T(6)));
g1(2,11)=(-(T(3)*T(6)));
g1(3,10)=1;
g1(3,11)=(-1);
g1(4,6)=(-1);
g1(4,12)=1;
g1(4,16)=(-params(3));
g1(4,17)=params(3);
g1(5,6)=(-1);
g1(5,13)=1;
g1(5,16)=(-params(3));
g1(5,18)=params(3);
g1(6,16)=1;
g1(6,17)=(-0.5);
g1(6,18)=(-0.5);
g1(7,7)=(-params(5));
g1(7,2)=(-(1-params(5)));
g1(7,8)=1;
g1(8,14)=1;
g1(8,3)=(-params(6));
g1(8,22)=(-1);
g1(9,15)=1;
g1(9,4)=(-params(7));
g1(10,10)=(-(T(7)*(-params(6))));
g1(10,14)=(-(T(7)*T(8)));
g1(10,3)=(-(params(6)*T(7)));
g1(10,17)=(-(T(7)*T(8)));
g1(10,19)=params(6);
g1(11,11)=T(9);
g1(11,15)=(-(T(9)*T(8)*1/(params(12)*params(7))));
g1(11,4)=T(9);
g1(11,18)=(-(T(9)*T(8)*1/(params(12)*params(7))));
g1(11,20)=1;
g1(12,10)=(-1);
g1(12,14)=1;
g1(12,3)=(-1);
g1(12,17)=1;
g1(13,11)=(-1);
g1(13,15)=1;
g1(13,4)=(-1);
g1(13,18)=1;
g1(14,10)=(-T(4));
g1(14,3)=1;
g1(14,17)=T(4);
g1(14,22)=T(4);
g1(15,11)=(-T(5));
g1(15,4)=1;
g1(15,18)=T(5);
g1(16,2)=(-1);
g1(16,9)=(-1);
g1(16,3)=1;
g1(17,2)=(-1);
g1(17,9)=(-0.5);
g1(17,4)=1;
g1(18,5)=(-params(9));
g1(18,22)=1;
g1(18,23)=(-1);
g1(19,6)=(-(T(14)/(T(14)+params(11)*(T(12)+T(13))-params(8)*T(3)*T(10))));
g1(19,10)=T(15);
g1(19,3)=T(15);
g1(19,16)=(-(T(14)/(T(14)+params(11)*(T(12)+T(13))-params(8)*T(3)*T(10))));
g1(19,19)=(-(params(11)*T(12)/(T(14)+params(11)*(T(12)+T(13))-params(8)*T(3)*T(10))));
g1(19,20)=(-(params(11)*T(13)/(T(14)+params(11)*(T(12)+T(13))-params(8)*T(3)*T(10))));
g1(19,21)=1;

end
