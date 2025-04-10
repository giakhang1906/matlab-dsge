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
g1(1,4)=(-(params(1)*(y(5)-y(6))));
g1(1,5)=(-(params(1)*y(4)));
g1(1,6)=(-(params(1)*(1-y(4))));
g1(2,2)=1;
g1(2,3)=(-(1-(1-params(5))));
g1(3,1)=1;
g1(3,2)=(-((-1)/((1+params(10))*y(13))));
g1(3,3)=(-((y(6)+y(4)*(y(5)-y(6)))/((1+params(10))*y(13))));
g1(3,4)=(-((y(5)-y(6))*y(3)/((1+params(10))*y(13))));
g1(3,5)=(-(y(4)*y(3)/((1+params(10))*y(13))));
g1(3,6)=(-(y(3)*(1-y(4))/((1+params(10))*y(13))));
g1(3,13)=(-((-((1+params(10))*(y(3)*(y(6)+y(4)*(y(5)-y(6)))-y(2))))/((1+params(10))*y(13)*(1+params(10))*y(13))));
g1(4,5)=(-1);
g1(4,6)=1;
g1(5,1)=(-T(2));
g1(5,7)=1;
g1(5,13)=(-(y(1)*T(1)*(-y(14))/(y(13)*y(13))*T(14)));
g1(5,14)=(-(y(1)*T(1)*T(14)*1/y(13)));
g1(6,1)=(-T(4));
g1(6,8)=1;
g1(6,13)=(-(y(1)*T(3)*(-y(15))/(y(13)*y(13))*T(15)));
g1(6,15)=(-(y(1)*T(3)*T(15)*1/y(13)));
g1(7,13)=1;
g1(7,14)=(-(T(1)*getPowerDeriv(y(14),1-params(3),1)*T(16)));
g1(7,15)=(-(T(16)*T(3)*getPowerDeriv(y(15),1-params(3),1)));
g1(8,9)=1;
g1(8,11)=(-(y(19)*getPowerDeriv(y(11),params(6),1)));
g1(8,19)=(-T(6));
g1(9,10)=1;
g1(9,12)=(-(params(12)*getPowerDeriv(y(12),params(7),1)));
g1(10,5)=y(11)*(1-params(8));
g1(10,9)=(-y(14));
g1(10,11)=y(5)*(1-params(8));
g1(10,14)=(-y(9));
g1(10,16)=1;
g1(11,6)=y(12);
g1(11,10)=(-y(15));
g1(11,12)=y(6);
g1(11,15)=(-y(10));
g1(11,17)=1;
g1(12,5)=(-(T(7)*(1-params(8))/T(8)));
g1(12,9)=(-(T(7)*(-(y(5)*(1-params(8))*params(6)*1/y(11)))/(T(8)*T(8))));
g1(12,11)=(-(T(7)*(-(y(5)*(1-params(8))*params(6)*(-y(9))/(y(11)*y(11))))/(T(8)*T(8))));
g1(12,14)=1;
g1(13,6)=(-(T(7)*1/T(9)));
g1(13,10)=(-(T(7)*(-(y(6)*params(7)*1/y(12)))/(T(9)*T(9))));
g1(13,12)=(-(T(7)*(-(y(6)*params(7)*(-y(10))/(y(12)*y(12))))/(T(9)*T(9))));
g1(13,15)=1;
g1(14,5)=(-((1-params(8))/(y(14)*y(19)*params(6))*T(12)));
g1(14,11)=1;
g1(14,14)=(-T(17));
g1(14,19)=(-T(19));
g1(15,6)=(-(1/(y(15)*params(12)*params(7))*T(13)));
g1(15,12)=1;
g1(15,15)=T(18);
g1(16,3)=1;
g1(16,4)=(-((-T(10))/(y(4)*y(4))));
g1(16,5)=(-((1-params(8))/(y(14)*y(19)*params(6))*T(12)/y(4)));
g1(16,14)=(-(T(17)/y(4)));
g1(16,19)=(-(T(19)/y(4)));
g1(17,3)=1-y(4);
g1(17,4)=(-y(3));
g1(17,6)=(-(1/(y(15)*params(12)*params(7))*T(13)));
g1(17,15)=T(18);
g1(18,19)=1/y(19)-params(9)*1/y(19);
g1(19,1)=(-(params(10)*y(13)));
g1(19,5)=y(11)*params(8);
g1(19,11)=y(5)*params(8);
g1(19,13)=(-(y(1)*params(10)));
g1(19,16)=(-params(11));
g1(19,17)=(-params(11));
g1(19,18)=1;

end
