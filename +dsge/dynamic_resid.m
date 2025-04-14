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
    residual(1) = (y(21)-y(2)) - ((1-params(1)*(1-params(5)))*y(23));
residual(2) = y(2)*(1/params(1)-1)/T(1)+params(5)*(y(3)-y(14))/T(1);
    residual(3) = (y(6)) - (y(7));
    residual(4) = (y(8)-y(2)) - ((-params(3))*(y(15)-y(14)));
    residual(5) = (y(9)-y(2)) - ((-params(3))*(y(16)-y(14)));
    residual(6) = (y(14)) - (y(15)*0.5+y(16)*0.5);
    residual(7) = (y(22)) - (params(5)*y(3)+(1-params(5))*y(4));
    residual(8) = (y(10)) - (y(20)+params(6)*y(12));
    residual(9) = (y(11)) - (params(7)*y(13));
    residual(10) = (y(17)) - (T(6)*T(7));
    residual(11) = (y(18)) - (T(1)*T(10)*(y(7)+y(12)+params(3)*(y(16)+y(11))/(params(12)*params(7)*(params(3)-1))));
    residual(12) = (y(15)+y(10)) - (y(6)+y(12));
    residual(13) = (y(16)+y(11)) - (y(7)+y(13));
    residual(14) = (y(12)) - (T(4)*(y(6)-y(20)-y(15)));
    residual(15) = (y(13)) - (T(9)*(y(7)-y(16)));
    residual(16) = (y(12)) - (y(4)+y(5));
    residual(17) = (y(13)) - (y(4)+0.5*y(5));
    residual(18) = (y(20)) - (params(9)*y(1)+x(it_, 1));
    residual(19) = (T(10)*T(11)*T(12)+params(11)*(T(2)*y(17)*T(13)-T(6)+T(8)*y(18)*params(12)*T(14)-T(1)*T(10))) - (T(5)*T(1)*params(8)*(y(6)+y(12))+y(19)*(T(16)+params(11)*(T(2)*T(13)-T(6)+T(8)*params(12)*T(14)-T(1)*T(10))-T(5)*T(1)*params(8)));

end
