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
    T = dsge.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(19, 1);
    residual(1) = (1) - (T(6)*T(7));
    residual(2) = (y(3)) - (y(22)-(1-params(5))*y(4));
    residual(3) = (y(2)) - ((y(4)*(y(7)+y(5)*(y(6)-y(7)))-y(3))/T(2));
    residual(4) = (y(7)) - (y(6));
    residual(5) = (y(8)) - (y(2)*T(10));
    residual(6) = (y(9)) - (y(2)*T(13));
    residual(7) = (y(14)) - (T(14)^T(15));
    residual(8) = (y(10)) - (y(20)*T(16));
    residual(9) = (y(11)) - (params(12)*y(13)^params(7));
    residual(10) = (y(17)) - (y(15)*y(10)-y(12)*y(6)*(1-params(8)));
    residual(11) = (y(18)) - (y(16)*y(11)-y(7)*y(13));
    residual(12) = (y(15)) - (T(17)*y(6)*(1-params(8))/T(18));
    residual(13) = (y(16)) - (T(17)*y(7)/T(19));
    residual(14) = (y(12)) - (T(22));
    residual(15) = (y(13)) - (T(25));
    residual(16) = (y(4)) - (T(22)/y(5));
    residual(17) = (y(4)) - (T(25)+y(4)*y(5));
    residual(18) = (log(y(20))) - (params(9)*log(y(1))+x(it_, 1));
    residual(19) = (y(19)) - (y(2)*params(10)*y(14)+params(11)*(y(17)+y(18))-y(12)*y(6)*params(8));

end
