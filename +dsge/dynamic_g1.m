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
g1 = zeros(19, 26);
g1(1,2)=(-(T(6)*T(22)));
g1(1,21)=(-(T(6)*T(25)));
g1(1,23)=(-(T(5)*(y(24)-y(25))));
g1(1,24)=(-(T(5)*y(23)));
g1(1,25)=(-(T(5)*(1-y(23))));
g1(1,14)=(-(T(6)*T(38)));
g1(2,3)=1;
g1(2,4)=1-params(5);
g1(2,22)=(-1);
g1(3,2)=1;
g1(3,3)=(-((-1)/((1+params(10))*y(14))));
g1(3,4)=(-((y(7)+y(5)*(y(6)-y(7)))/((1+params(10))*y(14))));
g1(3,5)=(-(y(4)*(y(6)-y(7))/((1+params(10))*y(14))));
g1(3,6)=(-(y(4)*y(5)/((1+params(10))*y(14))));
g1(3,7)=(-(y(4)*(1-y(5))/((1+params(10))*y(14))));
g1(3,14)=(-((-((1+params(10))*(y(4)*(y(7)+y(5)*(y(6)-y(7)))-y(3))))/T(35)));
g1(4,6)=(-1);
g1(4,7)=1;
g1(5,2)=(-T(8));
g1(5,8)=1;
g1(5,14)=(-(y(2)*T(7)*T(39)*T(40)));
g1(5,15)=(-(y(2)*T(7)*T(40)*T(43)));
g1(6,2)=(-T(10));
g1(6,9)=1;
g1(6,14)=(-(y(2)*T(9)*T(41)*T(42)));
g1(6,16)=(-(y(2)*T(9)*T(42)*T(43)));
g1(7,14)=1;
g1(7,15)=(-(T(44)*T(45)));
g1(7,16)=(-(T(45)*T(48)));
g1(8,10)=1;
g1(8,12)=(-(y(20)*T(32)));
g1(8,20)=(-T(12));
g1(9,11)=1;
g1(9,13)=(-(params(12)*getPowerDeriv(y(13),params(7),1)));
g1(10,6)=y(12)*(1-params(8));
g1(10,10)=(-y(15));
g1(10,12)=y(6)*(1-params(8));
g1(10,15)=(-y(10));
g1(10,17)=1;
g1(11,7)=y(13);
g1(11,11)=(-y(16));
g1(11,13)=y(7);
g1(11,16)=(-y(11));
g1(11,18)=1;
g1(12,6)=(-(T(13)*(1-params(8))/T(14)));
g1(12,10)=(-(T(13)*T(30)/(T(14)*T(14))));
g1(12,12)=(-(T(13)*(-(y(6)*(1-params(8))*T(33)))/(T(14)*T(14))));
g1(12,15)=1;
g1(13,7)=(-(T(13)*1/T(15)));
g1(13,11)=(-(T(13)*T(31)/(T(15)*T(15))));
g1(13,13)=(-(T(13)*(-(y(7)*T(34)))/(T(15)*T(15))));
g1(13,16)=1;
g1(14,6)=(-(T(26)*T(27)));
g1(14,12)=1;
g1(14,15)=(-T(47));
g1(14,20)=(-T(52));
g1(15,7)=(-(T(28)*T(29)));
g1(15,13)=1;
g1(15,16)=T(50);
g1(16,4)=1;
g1(16,5)=(-((-T(17))/(y(5)*y(5))));
g1(16,6)=(-(T(26)*T(27)/y(5)));
g1(16,15)=(-(T(47)/y(5)));
g1(16,20)=(-(T(52)/y(5)));
g1(17,4)=1-y(5);
g1(17,5)=(-y(4));
g1(17,7)=(-(T(28)*T(29)));
g1(17,16)=T(50);
g1(18,1)=(-(params(9)*1/y(1)));
g1(18,20)=1/y(20);
g1(18,26)=(-1);
g1(19,2)=(-(params(10)*y(14)));
g1(19,6)=y(12)*params(8);
g1(19,12)=y(6)*params(8);
g1(19,14)=(-(params(10)*y(2)));
g1(19,17)=(-params(11));
g1(19,18)=(-params(11));
g1(19,19)=1;

end
