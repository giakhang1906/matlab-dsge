function [g4_v, T_order, T] = dynamic_g4(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(252, 1);
end
[T_order, T] = dsge.sparse.dynamic_g4_tt(y, x, params, steady_state, T_order, T);
g4_v = NaN(176, 1);
g4_v(1)=(-(T(7)*params(1)*(T(67)*T(67)*(T(134)*T(135)+T(67)*(T(66)*T(133)+T(65)*(T(27)*T(27)+T(5)*T(64)+T(27)*T(27)+T(5)*T(64))+T(66)*T(133)+T(5)*T(5)*(-(T(3)*getPowerDeriv(y(20),(-params(2)),4)/T(2)))-(T(66)*T(133)+T(65)*(T(27)*T(27)+T(5)*T(64)+T(27)*T(27)+T(5)*T(64))+T(65)*(T(27)*T(27)+T(5)*T(64)+T(27)*T(27)+T(5)*T(64))+T(28)*(T(27)*T(64)+T(27)*T(64)+T(27)*T(64)+T(5)*T(132)+T(27)*T(64)+T(27)*T(64)+T(27)*T(64)+T(5)*T(132))))-(T(134)*T(135)+(T(5)*T(5)*T(65)-T(28)*T(66))*(T(66)*T(66)+T(5)*T(5)*(T(27)*T(27)+T(5)*T(64)+T(27)*T(27)+T(5)*T(64))+T(66)*T(66)+T(5)*T(5)*(T(27)*T(27)+T(5)*T(64)+T(27)*T(27)+T(5)*T(64)))))-T(136)*(T(67)*T(135)+T(67)*T(135)))/(T(67)*T(67)*T(67)*T(67))));
g4_v(2)=(-(T(7)*params(1)*(T(67)*(T(66)*(-(T(31)*T(64)))+T(5)*T(5)*(-(T(31)*T(132)))-(T(66)*(-(T(31)*T(64)))+(-(T(27)*T(31)))*(T(27)*T(27)+T(5)*T(64)+T(27)*T(27)+T(5)*T(64))))-T(135)*(T(5)*T(5)*(-(T(31)*T(64)))-T(66)*(-(T(27)*T(31)))))/(T(67)*T(67))));
g4_v(3)=(-((y(43)-y(44))*T(137)));
g4_v(4)=(-(y(42)*T(137)));
g4_v(5)=(-((1-y(42))*T(137)));
g4_v(6)=(-(T(7)*params(1)*(T(67)*T(67)*(T(134)*T(141)+T(67)*(T(227)+T(71)*T(133)+T(5)*T(5)*(-(T(45)*T(132)+T(3)*(-((1+params(10))*T(131)))/T(44)))-(T(227)+(-(T(27)*T(45)+T(3)*T(70)))*(T(27)*T(27)+T(5)*T(64)+T(27)*T(27)+T(5)*T(64))+T(28)*(T(228)+T(228))))-(T(135)*T(140)+(T(5)*T(5)*T(65)-T(28)*T(66))*(T(66)*T(71)+T(5)*T(5)*(T(27)*T(46)+T(5)*T(70)+T(27)*T(46)+T(5)*T(70))+T(66)*T(71)+T(5)*T(5)*(T(27)*T(46)+T(5)*T(70)+T(27)*T(46)+T(5)*T(70)))))-T(136)*(T(67)*T(141)+T(67)*T(141)))/(T(67)*T(67)*T(67)*T(67))));
g4_v(7)=(-(T(7)*params(1)*(T(5)*T(5)*(-(T(64)*T(74)))-T(66)*(-(T(27)*T(74))))/T(67)));
g4_v(8)=(-((y(43)-y(44))*T(138)));
g4_v(9)=(-(y(42)*T(138)));
g4_v(10)=(-((1-y(42))*T(138)));
g4_v(11)=(-(T(7)*params(1)*(T(67)*(T(71)*(-(T(31)*T(64)))+T(5)*T(5)*(-(T(64)*T(76)+T(31)*T(139)))-((-(T(27)*T(31)))*(T(27)*T(46)+T(5)*T(70)+T(27)*T(46)+T(5)*T(70))+T(66)*(-(T(31)*T(70)+T(27)*T(76)))))-(T(5)*T(5)*(-(T(31)*T(64)))-T(66)*(-(T(27)*T(31))))*T(141))/(T(67)*T(67))));
g4_v(12)=(-T(68));
g4_v(13)=T(68);
g4_v(14)=(-((y(43)-y(44))*T(142)));
g4_v(15)=(-(y(42)*T(142)));
g4_v(16)=(-((1-y(42))*T(142)));
g4_v(17)=(-(T(7)*params(1)*(T(67)*T(67)*(T(140)*T(141)+T(67)*(T(71)*(-(T(45)*T(64)+T(3)*T(139)))+T(65)*T(147)+T(71)*(-(T(45)*T(64)+T(3)*T(139)))+T(5)*T(5)*(-(T(64)*T(79)+T(45)*T(139)+T(45)*T(139)+T(3)*(-(T(78)*(-((1+params(10))*T(63)))))/(T(44)*T(44))))-((-(T(27)*T(45)+T(3)*T(70)))*(T(27)*T(46)+T(5)*T(70)+T(27)*T(46)+T(5)*T(70))+T(66)*T(146)+(-(T(27)*T(45)+T(3)*T(70)))*(T(27)*T(46)+T(5)*T(70)+T(27)*T(46)+T(5)*T(70))+T(28)*(T(229)+T(229))))-(T(140)*T(141)+(T(5)*T(5)*T(65)-T(28)*T(66))*(T(71)*T(71)+T(5)*T(5)*T(147)+T(71)*T(71)+T(5)*T(5)*T(147))))-(T(67)*T(140)-(T(5)*T(5)*T(65)-T(28)*T(66))*T(141))*(T(67)*T(141)+T(67)*T(141)))/(T(67)*T(67)*T(67)*T(67))));
g4_v(18)=(-(T(7)*params(1)*(-(T(27)*T(151)))/(T(5)*T(5))));
g4_v(19)=(-((y(43)-y(44))*T(143)));
g4_v(20)=(-(y(42)*T(143)));
g4_v(21)=(-((1-y(42))*T(143)));
g4_v(22)=(-(T(7)*params(1)*(T(5)*T(5)*(-(T(70)*T(74)+T(27)*T(153)))-T(71)*(-(T(27)*T(74))))/T(67)));
g4_v(23)=(-T(69));
g4_v(24)=T(69);
g4_v(25)=(-((y(43)-y(44))*T(144)));
g4_v(26)=(-(y(42)*T(144)));
g4_v(27)=(-((1-y(42))*T(144)));
g4_v(28)=(-(T(7)*params(1)*(T(67)*(T(71)*(-(T(31)*T(70)+T(27)*T(76)))+T(5)*T(5)*(-(T(70)*T(76)+T(31)*T(145)+T(70)*T(76)+T(27)*T(155)))-(T(71)*(-(T(31)*T(70)+T(27)*T(76)))+(-(T(27)*T(31)))*T(147)))-T(141)*(T(5)*T(5)*(-(T(31)*T(70)+T(27)*T(76)))-(-(T(27)*T(31)))*T(71)))/(T(67)*T(67))));
g4_v(29)=(-T(72));
g4_v(30)=T(72);
g4_v(31)=(-((y(43)-y(44))*T(149)));
g4_v(32)=(-(y(42)*T(149)));
g4_v(33)=(-((1-y(42))*T(149)));
g4_v(34)=(-(T(7)*params(1)*(T(67)*T(67)*(T(141)*T(148)+T(67)*(T(71)*T(146)+(-(T(27)*T(45)+T(3)*T(70)))*T(147)+T(71)*T(146)+T(5)*T(5)*(-(T(70)*T(79)+T(45)*T(145)+T(70)*T(79)+T(27)*T(161)+T(70)*T(79)+T(45)*T(145)+T(45)*T(145)+T(3)*(T(44)*T(44)*(-((-((1+params(10))*T(26)))*T(158)))-(-((-((1+params(10))*T(26)))*T(78)))*T(159))/T(160)))-(T(71)*T(146)+(-(T(27)*T(45)+T(3)*T(70)))*T(147)+(-(T(27)*T(45)+T(3)*T(70)))*T(147)+T(28)*(T(46)*T(80)+T(46)*T(80)+T(46)*T(80)+T(5)*T(162)+T(46)*T(80)+T(46)*T(80)+T(46)*T(80)+T(5)*T(162))))-(T(141)*T(148)+(T(5)*T(5)*(-(T(27)*T(45)+T(3)*T(70)))-T(28)*T(71))*(T(71)*T(71)+T(5)*T(5)*T(147)+T(71)*T(71)+T(5)*T(5)*T(147))))-(T(67)*T(148)-(T(5)*T(5)*(-(T(27)*T(45)+T(3)*T(70)))-T(28)*T(71))*T(141))*(T(67)*T(141)+T(67)*T(141)))/(T(67)*T(67)*T(67)*T(67))));
g4_v(35)=(-(T(7)*params(1)*getPowerDeriv(y(39),(-params(2)),4)/T(2)/T(5)));
g4_v(36)=(-((y(43)-y(44))*T(152)));
g4_v(37)=(-(y(42)*T(152)));
g4_v(38)=(-((1-y(42))*T(152)));
g4_v(39)=(-(T(7)*params(1)*(T(5)*(-((1+params(10))*T(150)))/T(44)-T(46)*T(151))/(T(5)*T(5))));
g4_v(40)=(-T(75));
g4_v(41)=T(75);
g4_v(42)=(-((y(43)-y(44))*T(154)));
g4_v(43)=(-(y(42)*T(154)));
g4_v(44)=(-((1-y(42))*T(154)));
g4_v(45)=(-(T(7)*params(1)*(T(5)*T(5)*(T(46)*T(153)+T(5)*(-(T(78)*(-((1+params(10))*T(73)))))/(T(44)*T(44))-(T(46)*T(153)+T(74)*T(80)))-T(71)*(T(5)*T(153)-T(46)*T(74)))/T(67)));
g4_v(46)=(-T(77));
g4_v(47)=T(77);
g4_v(48)=(-((y(43)-y(44))*T(157)));
g4_v(49)=(-(y(42)*T(157)));
g4_v(50)=(-((1-y(42))*T(157)));
g4_v(51)=(-(T(7)*params(1)*(T(67)*(T(71)*T(156)+T(5)*T(5)*(T(76)*T(80)+T(46)*T(155)+T(46)*T(155)+T(5)*(T(44)*T(44)*(-((-((1+params(10))*T(30)))*T(158)))-(-((-((1+params(10))*T(30)))*T(78)))*T(159))/T(160)-(T(76)*T(80)+T(46)*T(155)+T(76)*T(80)+T(31)*T(162)))-(T(71)*T(156)+(T(5)*T(76)-T(31)*T(46))*T(147)))-T(141)*(T(5)*T(5)*T(156)-T(71)*(T(5)*T(76)-T(31)*T(46))))/(T(67)*T(67))));
g4_v(52)=(-T(82));
g4_v(53)=T(82);
g4_v(54)=(-((y(43)-y(44))*T(164)));
g4_v(55)=(-(y(42)*T(164)));
g4_v(56)=(-((1-y(42))*T(164)));
g4_v(57)=(-(T(7)*params(1)*(T(67)*T(67)*(T(141)*T(163)+T(67)*(T(230)+T(71)*(T(46)*T(79)+T(45)*T(80)+T(46)*T(79)+T(5)*T(161)-(T(46)*T(79)+T(45)*T(80)+T(45)*T(80)+T(3)*T(162)))+T(5)*T(5)*(T(79)*T(80)+T(46)*T(161)+T(79)*T(80)+T(45)*T(162)+T(79)*T(80)+T(46)*T(161)+T(46)*T(161)+T(5)*(T(160)*((-((-(T(1)*(1+params(10))))*T(158)))*T(159)-((-((-(T(1)*(1+params(10))))*T(158)))*T(159)+(-((-(T(1)*(1+params(10))))*T(78)))*(T(78)*T(78)+T(44)*T(158)+T(78)*T(78)+T(44)*T(158))))-(T(44)*T(44)*(-((-(T(1)*(1+params(10))))*T(158)))-(-((-(T(1)*(1+params(10))))*T(78)))*T(159))*(T(44)*T(44)*T(159)+T(44)*T(44)*T(159)))/(T(160)*T(160))-(T(79)*T(80)+T(46)*T(161)+T(79)*T(80)+T(45)*T(162)+T(79)*T(80)+T(45)*T(162)+T(45)*T(162)+T(3)*(T(160)*(T(159)*(-((-((1+params(10))*T(4)))*T(158)))-(T(159)*(-((-((1+params(10))*T(4)))*T(158)))+(-((-((1+params(10))*T(4)))*T(78)))*(T(78)*T(78)+T(44)*T(158)+T(78)*T(78)+T(44)*T(158))))-(T(44)*T(44)*(-((-((1+params(10))*T(4)))*T(158)))-(-((-((1+params(10))*T(4)))*T(78)))*T(159))*(T(44)*T(44)*T(159)+T(44)*T(44)*T(159)))/(T(160)*T(160))))-(T(230)+(T(45)*T(46)+T(5)*T(79)-(T(45)*T(46)+T(3)*T(80)))*T(147)+(T(5)*T(45)-T(3)*T(46))*(T(46)*T(80)+T(46)*T(80)+T(46)*T(80)+T(5)*T(162)+T(46)*T(80)+T(46)*T(80)+T(46)*T(80)+T(5)*T(162))))-(T(141)*T(163)+T(81)*(T(71)*T(71)+T(5)*T(5)*T(147)+T(71)*T(71)+T(5)*T(5)*T(147))))-(T(67)*T(163)-T(81)*T(141))*(T(67)*T(141)+T(67)*T(141)))/(T(67)*T(67)*T(67)*T(67))));
g4_v(58)=(-((T(44)*T(44)*(-((1+params(10))*T(158)))-T(159)*(-((1+params(10))*T(78))))/T(160)));
g4_v(59)=(-((-(1+params(10)))/T(44)));
g4_v(60)=(-((1+params(10))/T(44)));
g4_v(61)=(-((-(T(78)*(-((1+params(10))*(y(24)-y(25))))))/(T(44)*T(44))));
g4_v(62)=(-((-(T(78)*(-((1+params(10))*y(23)))))/(T(44)*T(44))));
g4_v(63)=(-((-(T(78)*(-((1+params(10))*(1-y(23))))))/(T(44)*T(44))));
g4_v(64)=(-((T(44)*T(44)*(-((-((1+params(10))*(y(25)+y(23)*(y(24)-y(25)))))*T(158)))-T(159)*(-(T(78)*(-((1+params(10))*(y(25)+y(23)*(y(24)-y(25))))))))/T(160)));
g4_v(65)=(-((-(T(78)*(-((1+params(10))*y(22)))))/(T(44)*T(44))));
g4_v(66)=(-((-(T(78)*(-((1+params(10))*(-y(22))))))/(T(44)*T(44))));
g4_v(67)=(-((T(44)*T(44)*(-((-((1+params(10))*y(22)*(y(24)-y(25))))*T(158)))-T(159)*(-(T(78)*(-((1+params(10))*y(22)*(y(24)-y(25)))))))/T(160)));
g4_v(68)=(-((T(44)*T(44)*(-((-((1+params(10))*y(22)*y(23)))*T(158)))-T(159)*(-(T(78)*(-((1+params(10))*y(22)*y(23))))))/T(160)));
g4_v(69)=(-((T(44)*T(44)*(-((-((1+params(10))*y(22)*(1-y(23))))*T(158)))-T(159)*(-(T(78)*(-((1+params(10))*y(22)*(1-y(23)))))))/T(160)));
g4_v(70)=(-((T(160)*(T(159)*(-((-((1+params(10))*(y(22)*(y(25)+y(23)*(y(24)-y(25)))-y(21))))*T(158)))-(T(159)*(-((-((1+params(10))*(y(22)*(y(25)+y(23)*(y(24)-y(25)))-y(21))))*T(158)))+(-((-((1+params(10))*(y(22)*(y(25)+y(23)*(y(24)-y(25)))-y(21))))*T(78)))*(T(78)*T(78)+T(44)*T(158)+T(78)*T(78)+T(44)*T(158))))-T(165)*(T(44)*T(44)*T(159)+T(44)*T(44)*T(159)))/(T(160)*T(160))));
g4_v(71)=(-T(170));
g4_v(72)=(-T(172));
g4_v(73)=(-(T(9)*(T(86)*T(52)*T(84)+T(86)*T(52)*T(84)+T(48)*T(52)*T(52)*T(169))));
g4_v(74)=(-(T(9)*T(52)*T(52)*T(52)*T(169)));
g4_v(75)=(-(y(20)*T(9)*(T(48)*T(84)*T(168)+T(83)*(T(83)*T(84)+T(48)*T(48)*T(169))+T(48)*T(84)*T(168)+T(49)*(T(167)*((-(2*(-y(33))))*T(166)-((-(2*(-y(33))))*T(166)+(-((-y(33))*(y(32)+y(32))))*((y(32)+y(32))*(y(32)+y(32))+2*y(32)*y(32)+(y(32)+y(32))*(y(32)+y(32))+2*y(32)*y(32))))-(y(32)*y(32)*y(32)*y(32)*(-(2*(-y(33))))-(-((-y(33))*(y(32)+y(32))))*T(166))*(y(32)*y(32)*y(32)*y(32)*T(166)+y(32)*y(32)*y(32)*y(32)*T(166)))/(T(167)*T(167))+T(48)*T(84)*T(168)+T(83)*(T(83)*T(84)+T(48)*T(48)*T(169))+T(83)*(T(83)*T(84)+T(48)*T(48)*T(169))+T(48)*(T(84)*T(168)+T(83)*T(48)*T(169)+T(83)*T(48)*T(169)+T(48)*(T(83)*T(169)+T(48)*T(48)*T(231))))));
g4_v(76)=(-(y(20)*T(9)*(T(48)*T(84)*T(171)+T(83)*(T(84)*T(86)+T(48)*T(52)*T(169))+T(52)*T(84)*T(168)+T(49)*(2*y(32)*y(32)*y(32)*y(32)-(y(32)+y(32))*T(166))/T(167)+T(48)*T(84)*T(171)+T(83)*(T(84)*T(86)+T(48)*T(52)*T(169))+T(86)*(T(83)*T(84)+T(48)*T(48)*T(169))+T(48)*(T(84)*T(171)+T(83)*T(52)*T(169)+T(86)*T(48)*T(169)+T(48)*(T(86)*T(169)+T(48)*T(52)*T(231))))));
g4_v(77)=(-(y(20)*T(9)*(T(52)*T(84)*T(171)+T(52)*T(84)*T(171)+T(83)*T(52)*T(52)*T(169)+T(86)*(T(84)*T(86)+T(48)*T(52)*T(169))+T(86)*(T(84)*T(86)+T(48)*T(52)*T(169))+T(48)*(T(86)*T(52)*T(169)+T(86)*T(52)*T(169)+T(48)*T(52)*T(52)*T(231)))));
g4_v(78)=(-(y(20)*T(9)*(T(86)*T(52)*T(52)*T(169)+T(86)*T(52)*T(52)*T(169)+T(86)*T(52)*T(52)*T(169)+T(48)*T(52)*T(52)*T(52)*T(231))));
g4_v(79)=(-(y(20)*T(9)*T(52)*T(52)*T(52)*T(52)*T(231)));
g4_v(80)=(-T(175));
g4_v(81)=(-(T(12)*(T(87)*T(52)*T(88)+T(51)*T(171)+T(86)*T(50)*T(88)+T(50)*(T(86)*T(88)+T(50)*T(52)*T(174)))));
g4_v(82)=(-(T(12)*(T(86)*T(52)*T(88)+T(86)*T(52)*T(88)+T(50)*T(52)*T(52)*T(174))));
g4_v(83)=(-(T(12)*T(52)*T(52)*T(52)*T(174)));
g4_v(84)=(-(y(20)*T(12)*(T(50)*T(88)*T(173)+T(87)*(T(87)*T(88)+T(50)*T(50)*T(174))+T(50)*T(88)*T(173)+T(51)*(T(167)*(T(166)*(-(2*(-y(34))))-(T(166)*(-(2*(-y(34))))+(-((-y(34))*(y(32)+y(32))))*((y(32)+y(32))*(y(32)+y(32))+2*y(32)*y(32)+(y(32)+y(32))*(y(32)+y(32))+2*y(32)*y(32))))-(y(32)*y(32)*y(32)*y(32)*(-(2*(-y(34))))-(-((-y(34))*(y(32)+y(32))))*T(166))*(y(32)*y(32)*y(32)*y(32)*T(166)+y(32)*y(32)*y(32)*y(32)*T(166)))/(T(167)*T(167))+T(50)*T(88)*T(173)+T(87)*(T(87)*T(88)+T(50)*T(50)*T(174))+T(87)*(T(87)*T(88)+T(50)*T(50)*T(174))+T(50)*(T(88)*T(173)+T(87)*T(50)*T(174)+T(87)*T(50)*T(174)+T(50)*(T(87)*T(174)+T(50)*T(50)*T(232))))));
g4_v(85)=(-(y(20)*T(12)*(T(50)*T(88)*T(171)+T(87)*(T(86)*T(88)+T(50)*T(52)*T(174))+T(52)*T(88)*T(173)+T(51)*(2*y(32)*y(32)*y(32)*y(32)-(y(32)+y(32))*T(166))/T(167)+T(50)*T(88)*T(171)+T(87)*(T(86)*T(88)+T(50)*T(52)*T(174))+T(86)*(T(87)*T(88)+T(50)*T(50)*T(174))+T(50)*(T(88)*T(171)+T(87)*T(52)*T(174)+T(86)*T(50)*T(174)+T(50)*(T(86)*T(174)+T(50)*T(52)*T(232))))));
g4_v(86)=(-(y(20)*T(12)*(T(52)*T(88)*T(171)+T(52)*T(88)*T(171)+T(87)*T(52)*T(52)*T(174)+T(86)*(T(86)*T(88)+T(50)*T(52)*T(174))+T(86)*(T(86)*T(88)+T(50)*T(52)*T(174))+T(50)*(T(86)*T(52)*T(174)+T(86)*T(52)*T(174)+T(50)*T(52)*T(52)*T(232)))));
g4_v(87)=(-(y(20)*T(12)*(T(86)*T(52)*T(52)*T(174)+T(86)*T(52)*T(52)*T(174)+T(86)*T(52)*T(52)*T(174)+T(50)*T(52)*T(52)*T(52)*T(232))));
g4_v(88)=(-(y(20)*T(12)*T(52)*T(52)*T(52)*T(52)*T(232)));
g4_v(89)=(-(T(53)*T(91)*T(176)+T(90)*(T(90)*T(91)+T(53)*T(53)*T(177))+T(53)*T(91)*T(176)+T(54)*T(9)*getPowerDeriv(y(33),1-params(3),4)+T(53)*T(91)*T(176)+T(90)*(T(90)*T(91)+T(53)*T(53)*T(177))+T(90)*(T(90)*T(91)+T(53)*T(53)*T(177))+T(53)*(T(91)*T(176)+T(90)*T(53)*T(177)+T(90)*T(53)*T(177)+T(53)*(T(90)*T(177)+T(53)*T(53)*T(233)))));
g4_v(90)=(-(T(90)*T(53)*T(58)*T(177)+T(58)*T(91)*T(176)+T(90)*T(53)*T(58)*T(177)+T(53)*(T(90)*T(58)*T(177)+T(53)*T(53)*T(58)*T(233))));
g4_v(91)=(-(T(90)*(T(91)*T(92)+T(58)*T(58)*T(177))+T(53)*T(53)*(T(92)*T(177)+T(58)*T(58)*T(233))));
g4_v(92)=(-(T(53)*(T(92)*T(58)*T(177)+T(91)*T(178)+T(92)*T(58)*T(177)+T(58)*(T(92)*T(177)+T(58)*T(58)*T(233)))));
g4_v(93)=(-(T(92)*(T(91)*T(92)+T(58)*T(58)*T(177))+T(58)*T(91)*T(178)+T(92)*(T(91)*T(92)+T(58)*T(58)*T(177))+T(58)*(T(92)*T(58)*T(177)+T(91)*T(178)+T(92)*T(58)*T(177)+T(58)*(T(92)*T(177)+T(58)*T(58)*T(233)))+T(92)*(T(91)*T(92)+T(58)*T(58)*T(177))+T(58)*T(91)*T(178)+T(58)*T(91)*T(178)+T(54)*T(12)*getPowerDeriv(y(34),1-params(3),4)));
g4_v(94)=(-(y(38)*getPowerDeriv(y(30),params(6),4)));
g4_v(95)=(-T(179));
g4_v(96)=(-(params(12)*getPowerDeriv(y(31),params(7),4)));
g4_v(97)=(-(T(17)*(T(96)*(-(T(94)*(T(37)*T(37)+T(37)*T(37))))-(-(T(94)*T(95)))*(T(18)*T(18)*T(95)+T(18)*T(18)*T(95)))/(T(96)*T(96))));
g4_v(98)=(-(T(17)*(T(96)*(-(T(95)*T(180)+T(94)*T(182)))-(-(T(94)*T(95)))*T(183))/(T(96)*T(96))));
g4_v(99)=(-(T(17)*(T(96)*(T(99)*T(180)+T(18)*T(18)*(-((1-params(8))*T(184)))-(T(99)*T(180)+T(94)*T(185)))-(T(18)*T(18)*T(180)-T(94)*T(99))*T(183))/(T(96)*T(96))));
g4_v(100)=(-(T(17)*(T(96)*(T(99)*(-((1-params(8))*T(100)))+T(18)*T(18)*(-((1-params(8))*T(187)))-(T(99)*(-((1-params(8))*T(100)))+(-((1-params(8))*T(42)))*T(185)))-(T(18)*T(18)*(-((1-params(8))*T(100)))-(-((1-params(8))*T(42)))*T(99))*T(183))/(T(96)*T(96))));
g4_v(101)=(-(T(17)*(T(96)*T(96)*((-(T(38)*(T(37)*T(37)+T(37)*T(37))))*(T(18)*T(18)*T(95)+T(18)*T(18)*T(95))-((-(T(38)*(T(37)*T(37)+T(37)*T(37))))*(T(18)*T(18)*T(95)+T(18)*T(18)*T(95))+(-(T(38)*T(95)))*(T(95)*T(95)+T(18)*T(18)*(T(37)*T(37)+T(37)*T(37))+T(95)*T(95)+T(18)*T(18)*(T(37)*T(37)+T(37)*T(37)))))-T(181)*(T(96)*(T(18)*T(18)*T(95)+T(18)*T(18)*T(95))+T(96)*(T(18)*T(18)*T(95)+T(18)*T(18)*T(95))))/(T(96)*T(96)*T(96)*T(96))));
g4_v(102)=(-(T(17)*(T(96)*T(96)*((-(T(38)*(T(37)*T(37)+T(37)*T(37))))*T(183)+T(96)*(-(T(98)*(T(37)*T(37)+T(37)*T(37))+T(38)*(T(37)*T(97)+T(37)*T(97)+T(37)*T(97)+T(37)*T(97))))-((T(18)*T(18)*T(95)+T(18)*T(18)*T(95))*(-(T(95)*T(98)+T(38)*T(182)))+(-(T(38)*T(95)))*(T(95)*T(99)+T(18)*T(18)*T(182)+T(95)*T(99)+T(18)*T(18)*T(182))))-T(181)*(T(96)*T(183)+T(96)*T(183)))/(T(96)*T(96)*T(96)*T(96))));
g4_v(103)=(-(T(17)*(T(96)*T(96)*((-(T(95)*T(98)+T(38)*T(182)))*T(183)+T(96)*(-(T(98)*T(182)+T(95)*(-(y(24)*(1-params(8))*T(184)))+T(98)*T(182)+T(38)*(T(42)*T(97)+T(37)*T(100)+T(42)*T(97)+T(18)*T(184)+T(42)*T(97)+T(37)*T(100)+T(42)*T(97)+T(18)*T(184))))-((-(T(95)*T(98)+T(38)*T(182)))*T(183)+(-(T(38)*T(95)))*T(234)))-(T(96)*(-(T(95)*T(98)+T(38)*T(182)))-(-(T(38)*T(95)))*T(183))*(T(96)*T(183)+T(96)*T(183)))/(T(96)*T(96)*T(96)*T(96))));
g4_v(104)=(-(T(17)*(T(96)*T(96)*(T(183)*T(186)+T(96)*(T(99)*(-(y(24)*(1-params(8))*T(184)))+T(98)*T(185)+T(99)*(-(y(24)*(1-params(8))*T(184)))+T(18)*T(18)*(-(y(24)*(1-params(8))*params(6)*(2*y(30)*y(30)*y(30)*y(30)-(y(30)+y(30))*(y(30)*y(30)*(y(30)+y(30))+y(30)*y(30)*(y(30)+y(30))))/(y(30)*y(30)*y(30)*y(30)*y(30)*y(30)*y(30)*y(30))))-(T(99)*(-(y(24)*(1-params(8))*T(184)))+T(98)*T(185)+T(98)*T(185)+T(38)*(T(42)*T(100)+T(42)*T(100)+T(42)*T(100)+T(18)*T(187)+T(42)*T(100)+T(42)*T(100)+T(42)*T(100)+T(18)*T(187))))-(T(183)*T(186)+(T(18)*T(18)*T(98)-T(38)*T(99))*T(234)))-(T(96)*T(186)-(T(18)*T(18)*T(98)-T(38)*T(99))*T(183))*(T(96)*T(183)+T(96)*T(183)))/(T(96)*T(96)*T(96)*T(96))));
g4_v(105)=(-(T(17)*(T(96)*T(96)*(T(183)*T(188)+T(96)*((-(y(24)*(1-params(8))*T(100)))*T(185)+T(99)*(-(y(24)*(1-params(8))*T(187)))+T(99)*(-(y(24)*(1-params(8))*T(187)))+T(18)*T(18)*(-(y(24)*(1-params(8))*params(6)*(y(30)*y(30)*y(30)*y(30)*y(30)*y(30)*y(30)*y(30)*((-(2*(-y(28))))*(y(30)*y(30)*(y(30)+y(30))+y(30)*y(30)*(y(30)+y(30)))-((-(2*(-y(28))))*(y(30)*y(30)*(y(30)+y(30))+y(30)*y(30)*(y(30)+y(30)))+(-((-y(28))*(y(30)+y(30))))*((y(30)+y(30))*(y(30)+y(30))+2*y(30)*y(30)+(y(30)+y(30))*(y(30)+y(30))+2*y(30)*y(30))))-(y(30)*y(30)*y(30)*y(30)*(-(2*(-y(28))))-(-((-y(28))*(y(30)+y(30))))*(y(30)*y(30)*(y(30)+y(30))+y(30)*y(30)*(y(30)+y(30))))*(y(30)*y(30)*y(30)*y(30)*(y(30)*y(30)*(y(30)+y(30))+y(30)*y(30)*(y(30)+y(30)))+y(30)*y(30)*y(30)*y(30)*(y(30)*y(30)*(y(30)+y(30))+y(30)*y(30)*(y(30)+y(30)))))/(y(30)*y(30)*y(30)*y(30)*y(30)*y(30)*y(30)*y(30)*y(30)*y(30)*y(30)*y(30)*y(30)*y(30)*y(30)*y(30))))-((-(y(24)*(1-params(8))*T(100)))*T(185)+T(99)*(-(y(24)*(1-params(8))*T(187)))+(-(y(24)*(1-params(8))*T(100)))*T(185)+(-(y(24)*(1-params(8))*T(42)))*(T(42)*T(100)+T(42)*T(100)+T(42)*T(100)+T(18)*T(187)+T(42)*T(100)+T(42)*T(100)+T(42)*T(100)+T(18)*T(187))))-(T(183)*T(188)+(T(18)*T(18)*(-(y(24)*(1-params(8))*T(100)))-(-(y(24)*(1-params(8))*T(42)))*T(99))*T(234)))-(T(96)*T(188)-(T(18)*T(18)*(-(y(24)*(1-params(8))*T(100)))-(-(y(24)*(1-params(8))*T(42)))*T(99))*T(183))*(T(96)*T(183)+T(96)*T(183)))/(T(96)*T(96)*T(96)*T(96))));
g4_v(106)=(-(T(17)*(T(102)*(-((-T(39))*(T(39)*T(39)+T(39)*T(39))))-(-((-T(39))*T(101)))*(T(19)*T(19)*T(101)+T(19)*T(19)*T(101)))/(T(102)*T(102))));
g4_v(107)=(-(T(17)*(T(102)*(-(T(101)*T(189)+(-T(39))*T(191)))-(-((-T(39))*T(101)))*T(192))/(T(102)*T(102))));
g4_v(108)=(-(T(17)*(T(102)*(T(105)*T(189)+T(19)*T(19)*(-T(193))-(T(105)*T(189)+(-T(39))*T(194)))-(T(19)*T(19)*T(189)-(-T(39))*T(105))*T(192))/(T(102)*T(102))));
g4_v(109)=(-(T(17)*(T(102)*(T(105)*(-T(106))+T(19)*T(19)*(-T(196))-(T(105)*(-T(106))+(-T(43))*T(194)))-(T(19)*T(19)*(-T(106))-(-T(43))*T(105))*T(192))/(T(102)*T(102))));
g4_v(110)=(-(T(17)*(T(102)*T(102)*((-(T(40)*(T(39)*T(39)+T(39)*T(39))))*(T(19)*T(19)*T(101)+T(19)*T(19)*T(101))-((-(T(40)*(T(39)*T(39)+T(39)*T(39))))*(T(19)*T(19)*T(101)+T(19)*T(19)*T(101))+(-(T(40)*T(101)))*(T(101)*T(101)+T(19)*T(19)*(T(39)*T(39)+T(39)*T(39))+T(101)*T(101)+T(19)*T(19)*(T(39)*T(39)+T(39)*T(39)))))-T(190)*(T(102)*(T(19)*T(19)*T(101)+T(19)*T(19)*T(101))+T(102)*(T(19)*T(19)*T(101)+T(19)*T(19)*T(101))))/(T(102)*T(102)*T(102)*T(102))));
g4_v(111)=(-(T(17)*(T(102)*T(102)*((-(T(40)*(T(39)*T(39)+T(39)*T(39))))*T(192)+T(102)*(-(T(104)*(T(39)*T(39)+T(39)*T(39))+T(40)*(T(39)*T(103)+T(39)*T(103)+T(39)*T(103)+T(39)*T(103))))-((T(19)*T(19)*T(101)+T(19)*T(19)*T(101))*(-(T(101)*T(104)+T(40)*T(191)))+(-(T(40)*T(101)))*(T(101)*T(105)+T(19)*T(19)*T(191)+T(101)*T(105)+T(19)*T(19)*T(191))))-T(190)*(T(102)*T(192)+T(102)*T(192)))/(T(102)*T(102)*T(102)*T(102))));
g4_v(112)=(-(T(17)*(T(102)*T(102)*((-(T(101)*T(104)+T(40)*T(191)))*T(192)+T(102)*(-(T(104)*T(191)+T(101)*(-(y(25)*T(193)))+T(104)*T(191)+T(40)*(T(43)*T(103)+T(39)*T(106)+T(43)*T(103)+T(19)*T(193)+T(43)*T(103)+T(39)*T(106)+T(43)*T(103)+T(19)*T(193))))-((-(T(101)*T(104)+T(40)*T(191)))*T(192)+(-(T(40)*T(101)))*T(235)))-(T(102)*(-(T(101)*T(104)+T(40)*T(191)))-(-(T(40)*T(101)))*T(192))*(T(102)*T(192)+T(102)*T(192)))/(T(102)*T(102)*T(102)*T(102))));
g4_v(113)=(-(T(17)*(T(102)*T(102)*(T(192)*T(195)+T(102)*(T(105)*(-(y(25)*T(193)))+T(104)*T(194)+T(105)*(-(y(25)*T(193)))+T(19)*T(19)*(-(y(25)*params(7)*(2*y(31)*y(31)*y(31)*y(31)-(y(31)+y(31))*(y(31)*y(31)*(y(31)+y(31))+y(31)*y(31)*(y(31)+y(31))))/(y(31)*y(31)*y(31)*y(31)*y(31)*y(31)*y(31)*y(31))))-(T(105)*(-(y(25)*T(193)))+T(104)*T(194)+T(104)*T(194)+T(40)*(T(43)*T(106)+T(43)*T(106)+T(43)*T(106)+T(19)*T(196)+T(43)*T(106)+T(43)*T(106)+T(43)*T(106)+T(19)*T(196))))-(T(192)*T(195)+(T(19)*T(19)*T(104)-T(40)*T(105))*T(235)))-(T(102)*T(195)-(T(19)*T(19)*T(104)-T(40)*T(105))*T(192))*(T(102)*T(192)+T(102)*T(192)))/(T(102)*T(102)*T(102)*T(102))));
g4_v(114)=(-(T(17)*(T(102)*T(102)*(T(192)*T(197)+T(102)*((-(y(25)*T(106)))*T(194)+T(105)*(-(y(25)*T(196)))+T(105)*(-(y(25)*T(196)))+T(19)*T(19)*(-(y(25)*params(7)*(y(31)*y(31)*y(31)*y(31)*y(31)*y(31)*y(31)*y(31)*((-(2*(-y(29))))*(y(31)*y(31)*(y(31)+y(31))+y(31)*y(31)*(y(31)+y(31)))-((-(2*(-y(29))))*(y(31)*y(31)*(y(31)+y(31))+y(31)*y(31)*(y(31)+y(31)))+(-((-y(29))*(y(31)+y(31))))*((y(31)+y(31))*(y(31)+y(31))+2*y(31)*y(31)+(y(31)+y(31))*(y(31)+y(31))+2*y(31)*y(31))))-(y(31)*y(31)*y(31)*y(31)*(-(2*(-y(29))))-(-((-y(29))*(y(31)+y(31))))*(y(31)*y(31)*(y(31)+y(31))+y(31)*y(31)*(y(31)+y(31))))*(y(31)*y(31)*y(31)*y(31)*(y(31)*y(31)*(y(31)+y(31))+y(31)*y(31)*(y(31)+y(31)))+y(31)*y(31)*y(31)*y(31)*(y(31)*y(31)*(y(31)+y(31))+y(31)*y(31)*(y(31)+y(31)))))/(y(31)*y(31)*y(31)*y(31)*y(31)*y(31)*y(31)*y(31)*y(31)*y(31)*y(31)*y(31)*y(31)*y(31)*y(31)*y(31))))-((-(y(25)*T(106)))*T(194)+T(105)*(-(y(25)*T(196)))+(-(y(25)*T(106)))*T(194)+(-(y(25)*T(43)))*(T(43)*T(106)+T(43)*T(106)+T(43)*T(106)+T(19)*T(196)+T(43)*T(106)+T(43)*T(106)+T(43)*T(106)+T(19)*T(196))))-(T(192)*T(197)+(T(19)*T(19)*(-(y(25)*T(106)))-(-(y(25)*T(43)))*T(105))*T(235)))-(T(102)*T(197)-(T(19)*T(19)*(-(y(25)*T(106)))-(-(y(25)*T(43)))*T(105))*T(192))*(T(102)*T(192)+T(102)*T(192)))/(T(102)*T(102)*T(102)*T(102))));
g4_v(115)=(-(T(33)*T(33)*T(33)*T(33)*T(236)));
g4_v(116)=(-(T(108)*T(33)*T(33)*T(198)+T(33)*(T(108)*T(33)*T(198)+T(33)*(T(108)*T(198)+T(33)*T(56)*T(236)))));
g4_v(117)=(-(T(110)*T(33)*T(33)*T(198)+T(33)*(T(110)*T(33)*T(198)+T(33)*(T(110)*T(198)+T(33)*T(61)*T(236)))));
g4_v(118)=(-T(237));
g4_v(119)=(-T(238));
g4_v(120)=(-T(239));
g4_v(121)=(-T(240));
g4_v(122)=(-T(241));
g4_v(123)=(-T(242));
g4_v(124)=(-T(243));
g4_v(125)=(-T(244));
g4_v(126)=(-T(245));
g4_v(127)=(-T(246));
g4_v(128)=(-T(247));
g4_v(129)=(-T(248));
g4_v(130)=(-(T(35)*T(35)*T(35)*T(35)*T(249)));
g4_v(131)=(-(T(123)*T(35)*T(35)*T(219)+T(35)*(T(123)*T(35)*T(219)+T(35)*(T(123)*T(219)+T(35)*T(59)*T(249)))));
g4_v(132)=T(250);
g4_v(133)=T(251);
g4_v(134)=T(252);
g4_v(135)=(-((T(226)*((-(2*(-T(22))))*T(225)-((-(2*(-T(22))))*T(225)+(-((-T(22))*(y(23)+y(23))))*((y(23)+y(23))*(y(23)+y(23))+2*y(23)*y(23)+(y(23)+y(23))*(y(23)+y(23))+2*y(23)*y(23))))-(T(130)*(-(2*(-T(22))))-(-((-T(22))*(y(23)+y(23))))*T(225))*(T(130)*T(225)+T(130)*T(225)))/(T(226)*T(226))));
g4_v(136)=(-((T(130)*(-(2*(-(T(33)*T(34)))))-T(225)*(-((-(T(33)*T(34)))*(y(23)+y(23)))))/T(226)));
g4_v(137)=(-((T(130)*(-(2*(-T(57))))-T(225)*(-((-T(57))*(y(23)+y(23)))))/T(226)));
g4_v(138)=(-((T(130)*(-(2*(-T(62))))-T(225)*(-((-T(62))*(y(23)+y(23)))))/T(226)));
g4_v(139)=(-((-((-(T(33)*T(33)*T(107)))*(y(23)+y(23))))/T(130)));
g4_v(140)=(-((-((-T(109))*(y(23)+y(23))))/T(130)));
g4_v(141)=(-((-((-T(111))*(y(23)+y(23))))/T(130)));
g4_v(142)=(-((-((-T(116))*(y(23)+y(23))))/T(130)));
g4_v(143)=(-((-((-T(119))*(y(23)+y(23))))/T(130)));
g4_v(144)=(-((-((-T(121))*(y(23)+y(23))))/T(130)));
g4_v(145)=(-((-(T(33)*T(33)*T(33)*T(198)))/(y(23)*y(23))));
g4_v(146)=(-((-(T(33)*T(107)*T(108)+T(33)*(T(107)*T(108)+T(33)*T(56)*T(198))))/(y(23)*y(23))));
g4_v(147)=(-((-(T(33)*T(107)*T(110)+T(33)*(T(107)*T(110)+T(33)*T(61)*T(198))))/(y(23)*y(23))));
g4_v(148)=(-((-T(200))/(y(23)*y(23))));
g4_v(149)=(-((-T(202))/(y(23)*y(23))));
g4_v(150)=(-((-T(204))/(y(23)*y(23))));
g4_v(151)=(-((-T(208))/(y(23)*y(23))));
g4_v(152)=(-((-T(212))/(y(23)*y(23))));
g4_v(153)=(-((-T(216))/(y(23)*y(23))));
g4_v(154)=(-((-T(218))/(y(23)*y(23))));
g4_v(155)=(-(T(33)*T(33)*T(33)*T(33)*T(236)/y(23)));
g4_v(156)=(-((T(108)*T(33)*T(33)*T(198)+T(33)*(T(108)*T(33)*T(198)+T(33)*(T(108)*T(198)+T(33)*T(56)*T(236))))/y(23)));
g4_v(157)=(-((T(110)*T(33)*T(33)*T(198)+T(33)*(T(110)*T(33)*T(198)+T(33)*(T(110)*T(198)+T(33)*T(61)*T(236))))/y(23)));
g4_v(158)=(-(T(237)/y(23)));
g4_v(159)=(-(T(238)/y(23)));
g4_v(160)=(-(T(239)/y(23)));
g4_v(161)=(-(T(240)/y(23)));
g4_v(162)=(-(T(241)/y(23)));
g4_v(163)=(-(T(242)/y(23)));
g4_v(164)=(-(T(243)/y(23)));
g4_v(165)=(-(T(244)/y(23)));
g4_v(166)=(-(T(245)/y(23)));
g4_v(167)=(-(T(246)/y(23)));
g4_v(168)=(-(T(247)/y(23)));
g4_v(169)=(-(T(248)/y(23)));
g4_v(170)=(-(T(35)*T(35)*T(35)*T(35)*T(249)));
g4_v(171)=(-(T(123)*T(35)*T(35)*T(219)+T(35)*(T(123)*T(35)*T(219)+T(35)*(T(123)*T(219)+T(35)*T(59)*T(249)))));
g4_v(172)=T(250);
g4_v(173)=T(251);
g4_v(174)=T(252);
g4_v(175)=(-(params(9)*(2*y(19)*y(19)*y(19)*y(19)-(y(19)+y(19))*(y(19)*y(19)*(y(19)+y(19))+y(19)*y(19)*(y(19)+y(19))))/(y(19)*y(19)*y(19)*y(19)*y(19)*y(19)*y(19)*y(19))));
g4_v(176)=(2*y(38)*y(38)*y(38)*y(38)-(y(38)+y(38))*(y(38)*y(38)*(y(38)+y(38))+y(38)*y(38)*(y(38)+y(38))))/(y(38)*y(38)*y(38)*y(38)*y(38)*y(38)*y(38)*y(38));
end
