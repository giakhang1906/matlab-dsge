function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = dsge.static_g1_tt(T, y, x, params);
end
g1 = zeros(19, 19);
g1(1,5)=(-(1-params(1)*(1-params(5))));
g1(2,1)=(1/params(1)-1)/T(1);
g1(2,2)=params(5)/T(1);
g1(2,13)=(-params(5))/T(1);
g1(3,5)=1;
g1(3,6)=(-1);
g1(4,1)=(-1);
g1(4,7)=1;
g1(4,13)=(-params(3));
g1(4,14)=params(3);
g1(5,1)=(-1);
g1(5,8)=1;
g1(5,13)=(-params(3));
g1(5,15)=params(3);
g1(6,13)=1;
g1(6,14)=(-0.5);
g1(6,15)=(-0.5);
g1(7,2)=(-params(5));
g1(7,3)=1-(1-params(5));
g1(8,9)=1;
g1(8,11)=(-params(6));
g1(8,19)=(-1);
g1(9,10)=1;
g1(9,12)=(-params(7));
g1(10,5)=(-T(5));
g1(10,9)=(-(T(5)*params(3)/(y(19)*params(6)*(params(3)-1))));
g1(10,11)=(-T(5));
g1(10,14)=(-(T(5)*params(3)/(y(19)*params(6)*(params(3)-1))));
g1(10,16)=1;
g1(10,19)=(-((y(5)+y(11)+params(3)*(y(14)+y(9))/(y(19)*params(6)*(params(3)-1)))*T(14)+T(5)*(-(params(3)*(y(14)+y(9))*params(6)*(params(3)-1)))/(y(19)*params(6)*(params(3)-1)*y(19)*params(6)*(params(3)-1))));
g1(11,6)=(-(T(1)*T(8)));
g1(11,10)=(-(T(1)*T(8)*params(3)/(params(12)*params(7)*(params(3)-1))));
g1(11,12)=(-(T(1)*T(8)));
g1(11,15)=(-(T(1)*T(8)*params(3)/(params(12)*params(7)*(params(3)-1))));
g1(11,17)=1;
g1(12,5)=(-1);
g1(12,9)=1;
g1(12,11)=(-1);
g1(12,14)=1;
g1(13,6)=(-1);
g1(13,10)=1;
g1(13,12)=(-1);
g1(13,15)=1;
g1(14,5)=(-T(3));
g1(14,11)=1;
g1(14,14)=T(3);
g1(14,19)=T(3);
g1(15,6)=(-T(7));
g1(15,12)=1;
g1(15,15)=T(7);
g1(16,3)=(-1);
g1(16,4)=(-1);
g1(16,11)=1;
g1(17,3)=(-1);
g1(17,4)=(-0.5);
g1(17,12)=1;
g1(18,19)=1-params(9);
g1(19,1)=T(12);
g1(19,4)=T(8)*params(10)*(y(1)+y(13))*(y(6)-params(5))/(1+params(10))*(-1)/(y(4)*y(4))-y(18)*T(8)*params(10)*(y(6)-params(5))/(1+params(10))*(-1)/(y(4)*y(4));
g1(19,5)=(-(T(4)*T(1)*params(8)));
g1(19,6)=T(8)*T(9)*params(10)*(y(1)+y(13))*1/(1+params(10))-y(18)*T(8)*T(9)*params(10)*1/(1+params(10));
g1(19,11)=(-(T(4)*T(1)*params(8)));
g1(19,13)=T(12);
g1(19,16)=params(11)*T(2)*T(10);
g1(19,17)=params(11)*T(6)*params(12)*T(11);
g1(19,18)=(-(T(12)+params(11)*(T(2)*T(10)-T(5)+T(6)*params(12)*T(11)-T(1)*T(8))-T(4)*T(1)*params(8)));
g1(19,19)=params(11)*(-T(14))-(T(1)*params(8)*(y(5)+y(11))*T(13)+y(18)*(params(11)*(-T(14))-T(1)*params(8)*T(13)));

end
