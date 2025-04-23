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
    T = experiment.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(19, 24);
g1(1,3)=(-1);
g1(1,22)=1;
g1(1,23)=(-(1-params(1)*(1-params(4))));
g1(2,3)=1;
g1(2,4)=(-(T(6)*(-params(4))));
g1(2,5)=(-(T(3)*T(6)));
g1(2,8)=(-(T(3)*T(6)));
g1(3,7)=1;
g1(3,8)=(-1);
g1(4,3)=(-1);
g1(4,9)=1;
g1(4,15)=(-params(2));
g1(4,16)=params(2);
g1(5,3)=(-1);
g1(5,10)=1;
g1(5,15)=(-params(2));
g1(5,17)=params(2);
g1(6,15)=1;
g1(6,16)=(-0.5);
g1(6,17)=(-0.5);
g1(7,4)=(-params(4));
g1(7,1)=(-(1-params(4)));
g1(7,5)=1;
g1(8,11)=1;
g1(8,13)=(-params(5));
g1(8,21)=(-1);
g1(9,12)=1;
g1(9,14)=(-params(6));
g1(10,7)=(1-params(7))*T(3)*T(7);
g1(10,11)=(-T(9));
g1(10,13)=(1-params(7))*T(3)*T(7);
g1(10,16)=(-T(9));
g1(10,18)=T(9)-(1-params(7))*T(3)*T(7);
g1(11,8)=T(3)*T(8)/(T(10)-T(3)*T(8));
g1(11,12)=(-(T(10)/(T(10)-T(3)*T(8))));
g1(11,14)=T(3)*T(8)/(T(10)-T(3)*T(8));
g1(11,17)=(-(T(10)/(T(10)-T(3)*T(8))));
g1(11,19)=1;
g1(12,7)=(-1);
g1(12,11)=1;
g1(12,13)=(-1);
g1(12,16)=1;
g1(13,8)=(-1);
g1(13,12)=1;
g1(13,14)=(-1);
g1(13,17)=1;
g1(14,7)=(-T(4));
g1(14,13)=1;
g1(14,16)=T(4);
g1(14,21)=T(4);
g1(15,8)=(-T(5));
g1(15,14)=1;
g1(15,17)=T(5);
g1(16,5)=(-1);
g1(16,6)=(-1);
g1(16,13)=1;
g1(17,5)=(-1);
g1(17,6)=(-0.5);
g1(17,14)=1;
g1(18,2)=(-params(8));
g1(18,21)=1;
g1(18,24)=(-1);
g1(19,3)=T(13);
g1(19,7)=T(14);
g1(19,13)=T(14);
g1(19,15)=T(13);
g1(19,18)=(-(params(10)*(T(9)-(1-params(7))*T(3)*T(7))/T(12)));
g1(19,19)=(-(params(11)*(T(10)-T(3)*T(8))/T(12)));
g1(19,20)=1;

end
