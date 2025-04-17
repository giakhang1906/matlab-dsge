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
    T = test_2.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(19, 1);
    residual(1) = (y(23)-y(4)) - ((1-params(1)*(1-params(5)))*y(24));
    residual(2) = (y(4)) - (T(6)*(T(3)*(y(6)+y(9))-params(5)*y(5)));
    residual(3) = (y(8)) - (y(9));
    residual(4) = (y(10)-y(4)) - ((-params(3))*(y(17)-y(16)));
    residual(5) = (y(11)-y(4)) - ((-params(3))*(y(18)-y(16)));
    residual(6) = (y(16)) - (0.5*y(17)+0.5*y(18));
    residual(7) = (y(6)) - (params(5)*y(5)+(1-params(5))*y(1));
    residual(8) = (y(12)) - (y(22)+params(6)*y(14));
    residual(9) = (y(13)) - (params(7)*y(15));
    residual(10) = (params(6)*y(19)) - (T(7)*(T(8)*(y(17)+y(12))-params(6)*(y(8)-y(14))));
    residual(11) = (y(20)) - (T(9)*(T(8)*(y(18)+y(13))/(params(12)*params(7))-y(9)-y(2)));
    residual(12) = (y(17)+y(12)) - (y(8)+y(14));
    residual(13) = (y(18)+y(13)) - (y(9)+y(15));
    residual(14) = (y(14)) - (T(4)*(y(8)-y(22)-y(17)));
    residual(15) = (y(15)) - (T(5)*(y(9)-y(18)));
    residual(16) = (y(14)) - (y(6)+y(7));
    residual(17) = (y(15)) - (y(6)+0.5*y(7));
    residual(18) = (y(22)) - (params(9)*y(3)+x(it_, 1));
    residual(19) = (y(21)) - (((y(4)+y(16))*T(14)+params(11)*(y(19)*T(12)+y(20)*T(13))-(y(8)+y(14))*params(8)*T(3)*T(10))/(T(14)+params(11)*(T(12)+T(13))-params(8)*T(3)*T(10)));

end
