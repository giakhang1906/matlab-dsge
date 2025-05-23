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
g1 = zeros(19, 25);
g1(1,5)=(-1);
g1(1,23)=1;
g1(1,24)=(-(1-params(1)*(1-params(5))));
g1(2,5)=(1/params(1)-1)/T(1);
g1(2,6)=params(5)/T(1);
g1(2,16)=(-params(5))/T(1);
g1(3,9)=1;
g1(3,10)=(-1);
g1(4,5)=(-1);
g1(4,11)=1;
g1(4,16)=(-params(3));
g1(4,17)=params(3);
g1(5,5)=(-1);
g1(5,12)=1;
g1(5,16)=(-params(3));
g1(5,18)=params(3);
g1(6,16)=1;
g1(6,17)=(-0.5);
g1(6,18)=(-0.5);
g1(7,6)=(-params(5));
g1(7,1)=(-(1-params(5)));
g1(7,7)=1;
g1(8,13)=1;
g1(8,2)=(-params(6));
g1(8,22)=(-1);
g1(9,14)=1;
g1(9,3)=(-params(7));
g1(10,9)=(-(T(2)*(-(y(22)*params(6)))));
g1(10,13)=(-(T(2)*T(3)));
g1(10,2)=(-(y(22)*params(6)*T(2)));
g1(10,17)=(-(T(2)*T(3)));
g1(10,19)=y(22)*params(6);
g1(10,22)=params(6)*y(19)-T(2)*(-(params(6)*(y(9)-y(2))));
g1(11,10)=T(4);
g1(11,14)=(-(T(4)*T(3)*1/(params(7)*params(12))));
g1(11,3)=T(4);
g1(11,18)=(-(T(4)*T(3)*1/(params(7)*params(12))));
g1(11,20)=1;
g1(12,9)=(-1);
g1(12,13)=1;
g1(12,2)=(-1);
g1(12,17)=1;
g1(13,10)=(-1);
g1(13,14)=1;
g1(13,3)=(-1);
g1(13,18)=1;
g1(14,9)=(-T(5));
g1(14,2)=1;
g1(14,17)=T(5);
g1(14,22)=T(5);
g1(15,10)=(-T(6));
g1(15,3)=1;
g1(15,18)=T(6);
g1(16,1)=(-1);
g1(16,8)=(-1);
g1(16,2)=1;
g1(17,1)=(-1);
g1(17,8)=(-0.5);
g1(17,3)=1;
g1(18,4)=(-params(9));
g1(18,22)=1;
g1(18,25)=(-1);
g1(19,5)=(-(3*params(10)*(y(10)-params(5))/(1+params(10))*T(8)));
g1(19,9)=T(8)*T(1)*params(8);
g1(19,10)=y(21)*T(8)*3*params(10)*1/(1+params(10))-T(8)*3*params(10)*(y(5)+y(16))*1/(1+params(10));
g1(19,15)=T(8)*T(1)*params(8);
g1(19,16)=(-(3*params(10)*(y(10)-params(5))/(1+params(10))*T(8)));
g1(19,19)=(-(params(11)*T(9)));
g1(19,20)=(-(params(11)*T(10)));
g1(19,21)=T(11);
g1(19,22)=y(21)*(3*params(10)*(y(10)-params(5))/(1+params(10))*T(12)+params(11)*(1/params(6)-1)*T(1)*(1-params(8))*T(12)-T(1)*params(8)*T(12))-(3*(y(10)-params(5))/(1+params(10))*params(10)*(y(5)+y(16))*T(12)+params(11)*y(19)*(1/params(6)-1)*T(1)*(1-params(8))*T(12)-T(1)*params(8)*(y(9)+y(15))*T(12));

end
