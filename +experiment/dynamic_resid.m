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
    T = experiment.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(19, 1);
residual(1) = params(2)*(y(22)-y(3))+y(25)-y(15)-params(1)*T(3)*y(24);
    residual(2) = (y(3)) - (T(6)*(T(3)*(y(5)+y(8))-params(5)*y(4)));
    residual(3) = (y(23)) - (y(24));
    residual(4) = (y(9)-y(3)) - ((-params(3))*(y(16)-y(15)));
    residual(5) = (y(10)-y(3)) - ((-params(3))*(y(17)-y(15)));
    residual(6) = (y(15)) - (0.65*y(16)+0.35*y(17));
    residual(7) = (y(5)) - (params(5)*y(4)+(1-params(5))*y(1));
    residual(8) = (y(11)) - (y(21)+params(6)*y(13));
    residual(9) = (y(12)) - (params(7)*y(14));
    residual(10) = (y(18)*(T(9)-(1-params(8))*T(3)*T(7))) - ((y(16)+y(11))*T(9)-(y(13)+y(7))*(1-params(8))*T(3)*T(7));
    residual(11) = (y(19)) - ((y(17)+y(12))*T(10)/(T(10)-T(3)*T(8))-(y(8)+y(14))*T(3)*T(8)/(T(10)-T(3)*T(8)));
    residual(12) = (y(16)+y(11)) - (y(13)+y(7));
    residual(13) = (y(17)+y(12)) - (y(8)+y(14));
    residual(14) = (y(13)) - (T(4)*(y(7)-y(21)-y(16)));
    residual(15) = (y(14)) - (T(5)*(y(8)-y(17)));
    residual(16) = (T(4)*(y(7)-y(21)-y(16))) - (y(5)+y(6));
    residual(17) = (T(5)*(y(8)-y(17))) - (y(5)+y(6)*0.5);
    residual(18) = (y(21)) - (params(9)*y(2)+x(it_, 1));
    residual(19) = (y(20)) - (((y(3)+y(15))*T(11)+params(11)*y(18)*(T(9)-(1-params(8))*T(3)*T(7))+params(12)*y(19)*(T(10)-T(3)*T(8))-(y(13)+y(7))*params(8)*T(3)*T(7))/T(12));

end
