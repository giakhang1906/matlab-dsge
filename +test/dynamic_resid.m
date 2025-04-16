function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
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
%   residual
%

if T_flag
    T = test.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(19, 1);
    residual(1) = (y(22)-y(5)) - ((1-params(1)*(1-params(5)))*y(23));
    residual(2) = (y(5)) - (T(6)*(T(3)*(y(7)+y(10))-params(5)*y(6)));
    residual(3) = (y(9)) - (y(10));
    residual(4) = (y(11)-y(5)) - ((-params(3))*(y(16)-y(15)));
    residual(5) = (y(12)-y(5)) - ((-params(3))*(y(17)-y(15)));
    residual(6) = (y(15)) - (0.5*y(16)+0.5*y(17));
    residual(7) = (y(7)) - (params(5)*y(6)+(1-params(5))*y(1));
    residual(8) = (y(13)) - (y(21)+params(6)*y(2));
    residual(9) = (y(14)) - (params(7)*y(3));
    residual(10) = (params(6)*y(18)) - (T(7)*(T(8)*(y(16)+y(13))-params(6)*(y(9)-y(2))));
    residual(11) = (y(19)) - (T(9)*(T(8)*(y(17)+y(14))/(params(12)*params(7))-y(10)-y(3)));
    residual(12) = (y(16)+y(13)) - (y(9)+y(2));
    residual(13) = (y(17)+y(14)) - (y(10)+y(3));
    residual(14) = (y(2)) - (T(4)*(y(9)-y(21)-y(16)));
    residual(15) = (y(3)) - (T(5)*(y(10)-y(17)));
    residual(16) = (y(2)) - (y(1)+y(8));
    residual(17) = (y(3)) - (y(1)+0.5*y(8));
    residual(18) = (y(21)) - (params(9)*y(4)+x(it_, 1));
    residual(19) = (y(20)) - (((y(5)+y(15))*T(14)+params(11)*(y(18)*T(12)+y(19)*T(13))-params(8)*T(3)*T(10))/(T(14)+params(11)*(T(12)+T(13))-params(8)*T(3)*T(10)));

end
