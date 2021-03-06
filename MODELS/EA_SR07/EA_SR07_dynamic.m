function [residual, g1, g2, g3] = EA_SR07_dynamic(y, x, params, steady_state, it_)
%
% Status : Computes dynamic model for Dynare
%
% Inputs :
%   y         [#dynamic variables by 1] double    vector of endogenous variables in the order stored
%                                                 in M_.lead_lag_incidence; see the Manual
%   x         [nperiods by M_.exo_nbr] double     matrix of exogenous variables (in declaration order)
%                                                 for all simulation periods
%   steady_state  [M_.endo_nbr by 1] double       vector of steady state values
%   params    [M_.param_nbr by 1] double          vector of parameter values in declaration order
%   it_       scalar double                       time period for exogenous variables for which to evaluate the model
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the dynamic model equations in order of 
%                                          declaration of the equations.
%                                          Dynare may prepend auxiliary equations, see M_.aux_vars
%   g1        [M_.endo_nbr by #dynamic variables] double    Jacobian matrix of the dynamic model equations;
%                                                           rows: equations in order of declaration
%                                                           columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%   g2        [M_.endo_nbr by (#dynamic variables)^2] double   Hessian matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%   g3        [M_.endo_nbr by (#dynamic variables)^3] double   Third order derivative matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

%
% Model equations
%

residual = zeros(147, 1);
T229 = params(45)*params(125)/(1+params(45)*params(125)-params(45));
T337 = (-(1/params(113)));
T380 = params(73)^2;
T386 = (-(1/(T380+params(35)*params(70)^2)));
T431 = 1/(T380*params(69)*(1+params(35)));
T463 = params(75)/(1-params(75));
T481 = (params(73)-params(35)*(1-params(41)))/params(73);
T486 = T463*(params(73)-params(35)*(1-params(41)))/params(73);
T487 = y(247)*T486;
T510 = (1-params(44))*params(130)^params(37)*params(144)/params(146);
T522 = (1-params(43))*params(129)^params(71)*params(152)/params(146);
T532 = params(155)/params(146);
T554 = (1-params(75))*params(136)*params(151)/(params(73)*params(146));
T561 = (1-params(41))/params(73);
T572 = 1/params(54);
T600 = params(39)*params(149)/(params(73)*params(124));
T629 = (1-params(44))*(-params(37))*params(130)^(-(1-params(37)));
T638 = (1-params(43))*(-params(71))*params(129)^(-(1-params(71)));
T672 = params(44)*params(132)^(1-params(37));
T677 = params(43)*params(135)^(1-params(71));
T682 = (1-params(44))*params(131)^(1-params(37));
T692 = (-params(44))*params(133)^(-(1-params(37)));
T718 = 1/params(38);
T721 = params(75)*T718/(1-params(75));
T722 = y(115)*T721;
lhs =y(186);
rhs =4*y(110);
residual(1)= lhs-rhs;
lhs =y(187);
rhs =y(136)+y(36)+y(54)+y(55);
residual(2)= lhs-rhs;
lhs =y(188);
rhs =4*y(136);
residual(3)= lhs-rhs;
lhs =y(189);
rhs =y(137)-y(175);
residual(4)= lhs-rhs;
lhs =y(190);
rhs =y(137);
residual(5)= lhs-rhs;
lhs =y(191);
rhs =y(185);
residual(6)= lhs-rhs;
lhs =y(186);
rhs =params(32)*x(it_, 20)+params(31)*y(269)+params(30)*y(268)+params(29)*y(267)+params(28)*y(260)+params(27)*y(58)+params(26)*y(57)+params(25)*y(56)+params(24)*y(53)+y(190)*params(23)+params(22)*y(266)+params(21)*y(265)+params(20)*y(264)+params(19)*y(259)+params(18)*y(61)+params(17)*y(60)+params(16)*y(59)+params(15)*y(52)+y(189)*params(14)+params(13)*y(263)+params(12)*y(262)+params(11)*y(261)+params(10)*y(258)+params(6)*y(51)+y(188)*params(5)+params(1)*y(50)+params(2)*y(62)+params(3)*y(63)+params(4)*y(64)+params(7)*y(65)+params(8)*y(66)+params(9)*y(67);
residual(7)= lhs-rhs;
lhs =y(191);
rhs =params(34)*x(it_, 21);
residual(8)= lhs-rhs;
lhs =y(89)-y(131);
rhs =params(35)/(1+params(35)*params(62))*(y(236)-y(131)*params(48))+params(62)/(1+params(35)*params(62))*(y(1)-y(131))-y(131)*params(35)*params(62)*(1-params(48))/(1+params(35)*params(62))+(1-params(55))*(1-params(35)*params(55))/((1+params(35)*params(62))*params(55))*y(132)+y(124);
residual(9)= lhs-rhs;
lhs =y(132);
rhs =params(36)*(y(121)+y(99)-y(101))+y(93)+y(139)-y(120);
residual(10)= lhs-rhs;
lhs =y(133);
rhs =y(99)+y(139)+y(121)+y(93)-y(101);
residual(11)= lhs-rhs;
lhs =y(139);
rhs =T229*y(15);
residual(12)= lhs-rhs;
lhs =y(90)-y(131);
rhs =params(35)/(1+params(35)*params(63))*(y(237)-y(131)*params(48))+params(63)/(1+params(35)*params(63))*(y(2)-y(131))-y(131)*(1-params(48))*params(35)*params(63)/(1+params(35)*params(63))+(1-params(56))*(1-params(35)*params(56))/((1+params(35)*params(63))*params(56))*y(134)+y(125);
residual(13)= lhs-rhs;
lhs =y(134);
rhs =(-y(109))-y(108)-y(106);
residual(14)= lhs-rhs;
lhs =y(91)-y(131);
rhs =params(35)/(1+params(35)*params(64))*(y(238)-y(131)*params(48))+params(64)/(1+params(35)*params(64))*(y(3)-y(131))-y(131)*(1-params(48))*params(35)*params(64)/(1+params(35)*params(64))+(1-params(57))*(1-params(35)*params(57))/((1+params(35)*params(64))*params(57))*y(135)+y(126);
residual(15)= lhs-rhs;
lhs =y(135);
rhs =(-y(109))-y(108)-y(107);
residual(16)= lhs-rhs;
lhs =y(92)-y(131);
rhs =params(35)/(1+params(35)*params(65))*(y(239)-y(131)*params(48))+params(65)/(1+params(35)*params(65))*(y(4)-y(131))-y(131)*(1-params(48))*params(35)*params(65)/(1+params(35)*params(65))+y(109)*(1-params(58))*(1-params(35)*params(58))/((1+params(35)*params(65))*params(58))+y(130);
residual(17)= lhs-rhs;
lhs =y(93);
rhs =T337*(params(112)*y(5)+params(114)*y(240)+(y(89)-y(131))*params(115)+(y(236)-y(131)*params(48))*params(116)+params(117)*(y(36)-y(131))+params(118)*(y(136)-y(131)*params(48))+params(119)*y(96)+y(99)*params(120)+params(121)*y(116)+params(122)*y(118))+y(123);
residual(18)= lhs-rhs;
lhs =y(94);
rhs =T386*(params(73)*params(35)*(-params(70))*y(241)-params(73)*params(70)*y(6)+params(73)*params(70)*(y(121)-params(35)*y(248))+y(96)*(params(73)-params(35)*params(70))*(params(73)-params(70))+(params(73)-params(70))*(params(73)-params(35)*params(70))*params(47)/(1+params(47))*y(117)+(params(73)-params(35)*params(70))*(params(73)-params(70))*y(142)-(params(73)-params(70))*params(35)*(-params(70))*y(249))+y(122);
residual(19)= lhs-rhs;
lhs =y(95);
rhs =T431*(T380*params(69)*(params(35)*y(248)+y(7)+params(35)*y(242)-y(121))+y(97)-y(143))+y(128);
residual(20)= lhs-rhs;
residual(21) = y(96)*(-params(39))+params(39)*y(243)-y(248)*params(39)+y(110)*(params(39)-params(35)*params(75))-y(236)*params(39)+T463*(params(35)-params(39))*y(247);
residual(22) = y(97)+y(96)+y(248)-y(243)-params(35)*(1-params(41))/params(73)*y(244)-T481*y(250)+T487;
residual(23) = y(245)-(y(110)-y(114))-params(76)*y(105)+y(127);
lhs =T510*(y(94)+y(142)*params(37))+T522*(y(95)+y(143)*params(71))+params(49)*y(119)+T532*(y(113)-y(108)*params(72)+y(129));
rhs =params(66)*(y(120)+params(36)*(y(101)-y(121))+y(99)*(1-params(36)))-T554*(y(101)-y(8));
residual(24)= lhs-rhs;
lhs =y(100);
rhs =y(128)+y(8)*T561-y(121)*T561+y(95)*(1-T561);
residual(25)= lhs-rhs;
lhs =y(102);
rhs =T572*(T463*y(115)-y(96)-y(15)*params(125)/(params(125)-1));
residual(26)= lhs-rhs;
residual(27) = y(104)-y(103)-y(121)-y(89)+y(9);
lhs =params(45)*params(137)*params(143)*(y(99)+y(93));
rhs =T600*(y(104)+y(9)-y(89)-y(121))-y(102)*params(148);
residual(28)= lhs-rhs;
lhs =y(105);
rhs =y(109)*(-params(155))-y(108)*params(155)*params(72)+params(155)*y(113)+params(155)*y(129)+(params(153)+params(154))*y(141)-(params(153)*(y(94)+y(106)*T629)+params(154)*(y(95)+y(107)*T638))+params(125)/(params(73)*params(124))*y(10);
residual(29)= lhs-rhs;
lhs =y(106);
rhs =y(90)+y(11)-y(89);
residual(30)= lhs-rhs;
lhs =y(107);
rhs =y(91)+y(12)-y(89);
residual(31)= lhs-rhs;
lhs =y(108);
rhs =y(92)+y(13)-y(112);
residual(32)= lhs-rhs;
lhs =y(109);
rhs =y(89)+y(14)-y(92)-y(98);
residual(33)= lhs-rhs;
lhs =y(141);
rhs =y(109)+y(108);
residual(34)= lhs-rhs;
lhs =y(142);
rhs =y(106)*T672;
residual(35)= lhs-rhs;
lhs =y(143);
rhs =y(107)*T677;
residual(36)= lhs-rhs;
lhs =y(136);
rhs =y(89)*T682+y(90)*T672;
residual(37)= lhs-rhs;
lhs =y(137);
rhs =params(66)*(y(120)+params(36)*(y(101)-y(121))+y(99)*(1-params(36)));
residual(38)= lhs-rhs;
lhs =y(138);
rhs =y(106)*T692-y(108)-y(109);
residual(39)= lhs-rhs;
lhs =y(111);
rhs =params(35)/(1+params(35))*y(246)+1/(1+params(35))*y(16)+(1-params(60))*(1-params(35)*params(60))/((1+params(35))*params(60))*(y(99)-y(111));
residual(40)= lhs-rhs;
lhs =y(140);
rhs =y(133)*T718-T722;
residual(41)= lhs-rhs;
lhs =y(140);
rhs =y(101)-y(8);
residual(42)= lhs-rhs;
residual(43) = y(144);
residual(44) = y(170);
residual(45) = y(172);
residual(46) = y(173);
residual(47) = y(164);
lhs =y(170);
rhs =params(36)*(y(121)+y(154)-y(156))+y(148)+y(177)-y(120);
residual(48)= lhs-rhs;
lhs =y(171);
rhs =y(154)+y(177)+y(121)+y(148)-y(156);
residual(49)= lhs-rhs;
lhs =y(177);
rhs =T229*y(46);
residual(50)= lhs-rhs;
lhs =y(172);
rhs =(-y(164))-y(163)-y(161);
residual(51)= lhs-rhs;
lhs =y(173);
rhs =(-y(164))-y(163)-y(162);
residual(52)= lhs-rhs;
lhs =y(148)+y(116)*(-params(46))/(1-params(46))+y(151)-y(118)*params(74)/(1+params(74));
rhs =y(123)+y(154)*params(40);
residual(53)= lhs-rhs;
lhs =y(149);
rhs =y(122)+T386*((params(73)-params(70))*(params(73)-params(35)*params(70))*params(47)/(1+params(47))*y(117)+params(73)*params(70)*(y(121)-params(35)*y(248))+params(73)*params(35)*(-params(70))*y(252)-params(73)*params(70)*y(37)+(params(73)-params(35)*params(70))*(params(73)-params(70))*y(151)+(params(73)-params(35)*params(70))*(params(73)-params(70))*y(180)-(params(73)-params(70))*params(35)*(-params(70))*y(249));
residual(54)= lhs-rhs;
lhs =y(150);
rhs =y(128)+T431*(T380*params(69)*(params(35)*y(248)+y(38)+params(35)*y(253)-y(121))+y(152)-y(181));
residual(55)= lhs-rhs;
residual(56) = T463*(params(35)-params(39))*y(247)+(-params(39))*y(151)+params(39)*y(254)-y(248)*params(39)+(params(39)-params(35)*params(75))*y(165)-params(39)*y(251);
residual(57) = T487+y(152)+y(248)+y(151)-y(254)-params(35)*(1-params(41))/params(73)*y(255)-T481*y(257);
residual(58) = y(127)+y(256)-(y(165)-y(184))-params(76)*y(160);
lhs =params(49)*y(119)+T510*(y(149)+params(37)*y(180))+T522*(y(150)+params(71)*y(181))+T532*(y(129)+y(183)-params(72)*y(163));
rhs =params(66)*(y(120)+params(36)*(y(156)-y(121))+(1-params(36))*y(154))-T554*(y(156)-y(39));
residual(59)= lhs-rhs;
lhs =y(155);
rhs =y(128)+T561*y(39)-y(121)*T561+(1-T561)*y(150);
residual(60)= lhs-rhs;
lhs =y(157);
rhs =T572*(T463*y(115)-y(151)-params(125)/(params(125)-1)*y(46));
residual(61)= lhs-rhs;
residual(62) = y(159)-y(158)-y(121)-y(144)+y(40);
lhs =params(45)*params(137)*params(143)*(y(154)+y(148));
rhs =T600*(y(159)+y(40)-y(144)-y(121))-params(148)*y(157);
residual(63)= lhs-rhs;
lhs =y(160);
rhs =params(155)*y(129)+(-params(155))*y(164)-params(155)*params(72)*y(163)+params(155)*y(183)+(params(153)+params(154))*y(179)-(params(153)*(y(149)+T629*y(161))+params(154)*(y(150)+T638*y(162)))+params(125)/(params(73)*params(124))*y(41);
residual(64)= lhs-rhs;
lhs =y(161);
rhs =y(42)+y(145)-y(144);
residual(65)= lhs-rhs;
lhs =y(162);
rhs =y(43)+y(146)-y(144);
residual(66)= lhs-rhs;
lhs =y(163);
rhs =y(44)+y(147)-y(182);
residual(67)= lhs-rhs;
lhs =y(164);
rhs =y(144)+y(45)-y(147)-y(153);
residual(68)= lhs-rhs;
lhs =y(179);
rhs =y(164)+y(163);
residual(69)= lhs-rhs;
lhs =y(180);
rhs =T672*y(161);
residual(70)= lhs-rhs;
lhs =y(181);
rhs =T677*y(162);
residual(71)= lhs-rhs;
lhs =y(174);
rhs =T682*y(144)+T672*y(145);
residual(72)= lhs-rhs;
lhs =y(175);
rhs =params(66)*(y(120)+params(36)*(y(156)-y(121))+(1-params(36))*y(154));
residual(73)= lhs-rhs;
lhs =y(176);
rhs =T692*y(161)-y(163)-y(164);
residual(74)= lhs-rhs;
lhs =y(178);
rhs =T718*y(171)-T722;
residual(75)= lhs-rhs;
lhs =y(178);
rhs =y(156)-y(39);
residual(76)= lhs-rhs;
lhs =y(115);
rhs =params(52)*y(20)+params(250)*x(it_, 1);
residual(77)= lhs-rhs;
lhs =y(118);
rhs =params(53)*y(23)+params(251)*x(it_, 2);
residual(78)= lhs-rhs;
lhs =y(116);
rhs =y(185)*params(234)+params(232)*x(it_, 3)+params(231)*x(it_, 4)+params(207)*y(21)+params(208)*y(22)+params(209)*y(24)+params(216)*y(68)+params(217)*y(69)+params(218)*y(70);
residual(79)= lhs-rhs;
lhs =y(117);
rhs =y(185)*params(239)+x(it_, 3)*params(237)+x(it_, 4)*params(236)+y(21)*params(210)+y(22)*params(211)+y(24)*params(212)+params(219)*y(68)+params(220)*y(69)+params(221)*y(70);
residual(80)= lhs-rhs;
lhs =y(119);
rhs =y(185)*params(249)+x(it_, 3)*params(247)+x(it_, 4)*params(246)+y(21)*params(213)+y(22)*params(214)+y(24)*params(215)+params(222)*y(68)+params(223)*y(69)+params(224)*y(70);
residual(81)= lhs-rhs;
lhs =y(112);
rhs =params(200)*x(it_, 19)+params(199)*x(it_, 18)+params(198)*x(it_, 17)+params(162)*y(17)+params(163)*y(18)+params(164)*y(19)+params(171)*y(71)+params(172)*y(72)+params(173)*y(73)+params(180)*y(74)+params(181)*y(75)+params(182)*y(76)+params(189)*y(77)+params(190)*y(78)+params(191)*y(79);
residual(82)= lhs-rhs;
lhs =y(113);
rhs =x(it_, 19)*params(203)+x(it_, 18)*params(202)+x(it_, 17)*params(201)+y(17)*params(165)+y(18)*params(166)+y(19)*params(167)+params(174)*y(71)+params(175)*y(72)+params(176)*y(73)+params(183)*y(74)+params(184)*y(75)+params(185)*y(76)+params(192)*y(77)+params(193)*y(78)+params(194)*y(79);
residual(83)= lhs-rhs;
lhs =y(114);
rhs =x(it_, 19)*params(206)+x(it_, 18)*params(205)+x(it_, 17)*params(204)+y(17)*params(168)+y(18)*params(169)+y(19)*params(170)+params(177)*y(71)+params(178)*y(72)+params(179)*y(73)+params(186)*y(74)+params(187)*y(75)+params(188)*y(76)+params(195)*y(77)+params(196)*y(78)+params(197)*y(79);
residual(84)= lhs-rhs;
residual(85) = y(182);
lhs =y(183);
rhs =x(it_, 19)*params(203)+x(it_, 18)*params(202)+params(165)*y(47)+params(166)*y(48)+params(167)*y(49)+params(174)*y(80)+params(175)*y(81)+params(176)*y(82)+params(183)*y(83)+params(184)*y(84)+params(185)*y(85)+params(192)*y(86)+params(193)*y(87)+params(194)*y(88);
residual(86)= lhs-rhs;
lhs =y(184);
rhs =x(it_, 19)*params(206)+x(it_, 18)*params(205)+params(168)*y(47)+params(169)*y(48)+params(170)*y(49)+params(177)*y(80)+params(178)*y(81)+params(179)*y(82)+params(186)*y(83)+params(187)*y(84)+params(188)*y(85)+params(195)*y(86)+params(196)*y(87)+params(197)*y(88);
residual(87)= lhs-rhs;
lhs =y(124);
rhs =x(it_, 5);
residual(88)= lhs-rhs;
lhs =y(125);
rhs =params(84)*y(29)+x(it_, 6);
residual(89)= lhs-rhs;
lhs =y(126);
rhs =params(85)*y(30)+x(it_, 7);
residual(90)= lhs-rhs;
lhs =y(130);
rhs =params(86)*y(34)+x(it_, 8);
residual(91)= lhs-rhs;
residual(92) = y(166);
residual(93) = y(167);
residual(94) = y(168);
residual(95) = y(169);
lhs =y(121);
rhs =params(77)*y(26)+x(it_, 9);
residual(96)= lhs-rhs;
lhs =y(120);
rhs =params(78)*y(25)+x(it_, 10);
residual(97)= lhs-rhs;
lhs =y(128);
rhs =params(79)*y(32)+x(it_, 11);
residual(98)= lhs-rhs;
lhs =y(129);
rhs =params(80)*y(33)+x(it_, 12);
residual(99)= lhs-rhs;
lhs =y(122);
rhs =params(81)*y(27)+x(it_, 13);
residual(100)= lhs-rhs;
lhs =y(123);
rhs =params(82)*y(28)+x(it_, 14);
residual(101)= lhs-rhs;
lhs =y(127);
rhs =params(83)*y(31)+x(it_, 15);
residual(102)= lhs-rhs;
lhs =y(131);
rhs =params(48)*y(35)+x(it_, 16);
residual(103)= lhs-rhs;
lhs =y(192);
rhs =y(258);
residual(104)= lhs-rhs;
lhs =y(193);
rhs =y(261);
residual(105)= lhs-rhs;
lhs =y(194);
rhs =y(262);
residual(106)= lhs-rhs;
lhs =y(195);
rhs =y(259);
residual(107)= lhs-rhs;
lhs =y(196);
rhs =y(264);
residual(108)= lhs-rhs;
lhs =y(197);
rhs =y(265);
residual(109)= lhs-rhs;
lhs =y(198);
rhs =y(260);
residual(110)= lhs-rhs;
lhs =y(199);
rhs =y(267);
residual(111)= lhs-rhs;
lhs =y(200);
rhs =y(268);
residual(112)= lhs-rhs;
lhs =y(201);
rhs =y(36);
residual(113)= lhs-rhs;
lhs =y(202);
rhs =y(54);
residual(114)= lhs-rhs;
lhs =y(203);
rhs =y(53);
residual(115)= lhs-rhs;
lhs =y(204);
rhs =y(56);
residual(116)= lhs-rhs;
lhs =y(205);
rhs =y(57);
residual(117)= lhs-rhs;
lhs =y(206);
rhs =y(52);
residual(118)= lhs-rhs;
lhs =y(207);
rhs =y(59);
residual(119)= lhs-rhs;
lhs =y(208);
rhs =y(60);
residual(120)= lhs-rhs;
lhs =y(209);
rhs =y(50);
residual(121)= lhs-rhs;
lhs =y(210);
rhs =y(62);
residual(122)= lhs-rhs;
lhs =y(211);
rhs =y(63);
residual(123)= lhs-rhs;
lhs =y(212);
rhs =y(51);
residual(124)= lhs-rhs;
lhs =y(213);
rhs =y(65);
residual(125)= lhs-rhs;
lhs =y(214);
rhs =y(66);
residual(126)= lhs-rhs;
lhs =y(215);
rhs =y(21);
residual(127)= lhs-rhs;
lhs =y(216);
rhs =y(22);
residual(128)= lhs-rhs;
lhs =y(217);
rhs =y(24);
residual(129)= lhs-rhs;
lhs =y(218);
rhs =y(17);
residual(130)= lhs-rhs;
lhs =y(219);
rhs =y(18);
residual(131)= lhs-rhs;
lhs =y(220);
rhs =y(19);
residual(132)= lhs-rhs;
lhs =y(221);
rhs =y(71);
residual(133)= lhs-rhs;
lhs =y(222);
rhs =y(72);
residual(134)= lhs-rhs;
lhs =y(223);
rhs =y(73);
residual(135)= lhs-rhs;
lhs =y(224);
rhs =y(74);
residual(136)= lhs-rhs;
lhs =y(225);
rhs =y(75);
residual(137)= lhs-rhs;
lhs =y(226);
rhs =y(76);
residual(138)= lhs-rhs;
lhs =y(227);
rhs =y(47);
residual(139)= lhs-rhs;
lhs =y(228);
rhs =y(48);
residual(140)= lhs-rhs;
lhs =y(229);
rhs =y(49);
residual(141)= lhs-rhs;
lhs =y(230);
rhs =y(80);
residual(142)= lhs-rhs;
lhs =y(231);
rhs =y(81);
residual(143)= lhs-rhs;
lhs =y(232);
rhs =y(82);
residual(144)= lhs-rhs;
lhs =y(233);
rhs =y(83);
residual(145)= lhs-rhs;
lhs =y(234);
rhs =y(84);
residual(146)= lhs-rhs;
lhs =y(235);
rhs =y(85);
residual(147)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(147, 290);

  %
  % Jacobian matrix
  %

T3 = (-1);
  g1(1,110)=(-4);
  g1(1,186)=1;
  g1(2,36)=T3;
  g1(2,136)=T3;
  g1(2,187)=1;
  g1(2,54)=T3;
  g1(2,55)=T3;
  g1(3,136)=(-4);
  g1(3,188)=1;
  g1(4,137)=T3;
  g1(4,175)=1;
  g1(4,189)=1;
  g1(5,137)=T3;
  g1(5,190)=1;
  g1(6,185)=T3;
  g1(6,191)=1;
  g1(7,50)=(-params(1));
  g1(7,186)=1;
  g1(7,51)=(-params(6));
  g1(7,188)=(-params(5));
  g1(7,258)=(-params(10));
  g1(7,52)=(-params(15));
  g1(7,189)=(-params(14));
  g1(7,259)=(-params(19));
  g1(7,53)=(-params(24));
  g1(7,190)=(-params(23));
  g1(7,260)=(-params(28));
  g1(7,289)=(-params(32));
  g1(7,261)=(-params(11));
  g1(7,262)=(-params(12));
  g1(7,263)=(-params(13));
  g1(7,264)=(-params(20));
  g1(7,265)=(-params(21));
  g1(7,266)=(-params(22));
  g1(7,267)=(-params(29));
  g1(7,268)=(-params(30));
  g1(7,269)=(-params(31));
  g1(7,56)=(-params(25));
  g1(7,57)=(-params(26));
  g1(7,58)=(-params(27));
  g1(7,59)=(-params(16));
  g1(7,60)=(-params(17));
  g1(7,61)=(-params(18));
  g1(7,62)=(-params(2));
  g1(7,63)=(-params(3));
  g1(7,64)=(-params(4));
  g1(7,65)=(-params(7));
  g1(7,66)=(-params(8));
  g1(7,67)=(-params(9));
  g1(8,191)=1;
  g1(8,290)=(-params(34));
  g1(9,1)=(-(params(62)/(1+params(35)*params(62))));
  g1(9,89)=1;
  g1(9,236)=(-(params(35)/(1+params(35)*params(62))));
  g1(9,124)=T3;
  g1(9,131)=T3-(params(35)/(1+params(35)*params(62))*(-params(48))-params(62)/(1+params(35)*params(62))-params(35)*params(62)*(1-params(48))/(1+params(35)*params(62)));
  g1(9,132)=(-((1-params(55))*(1-params(35)*params(55))/((1+params(35)*params(62))*params(55))));
  g1(10,93)=T3;
  g1(10,99)=(-params(36));
  g1(10,101)=params(36);
  g1(10,120)=1;
  g1(10,121)=(-params(36));
  g1(10,132)=1;
  g1(10,139)=T3;
  g1(11,93)=T3;
  g1(11,99)=T3;
  g1(11,101)=1;
  g1(11,121)=T3;
  g1(11,133)=1;
  g1(11,139)=T3;
  g1(12,15)=(-T229);
  g1(12,139)=1;
  g1(13,2)=(-(params(63)/(1+params(35)*params(63))));
  g1(13,90)=1;
  g1(13,237)=(-(params(35)/(1+params(35)*params(63))));
  g1(13,125)=T3;
  g1(13,131)=T3-(params(35)/(1+params(35)*params(63))*(-params(48))-params(63)/(1+params(35)*params(63))-(1-params(48))*params(35)*params(63)/(1+params(35)*params(63)));
  g1(13,134)=(-((1-params(56))*(1-params(35)*params(56))/((1+params(35)*params(63))*params(56))));
  g1(14,106)=1;
  g1(14,108)=1;
  g1(14,109)=1;
  g1(14,134)=1;
  g1(15,3)=(-(params(64)/(1+params(35)*params(64))));
  g1(15,91)=1;
  g1(15,238)=(-(params(35)/(1+params(35)*params(64))));
  g1(15,126)=T3;
  g1(15,131)=T3-(params(35)/(1+params(35)*params(64))*(-params(48))-params(64)/(1+params(35)*params(64))-(1-params(48))*params(35)*params(64)/(1+params(35)*params(64)));
  g1(15,135)=(-((1-params(57))*(1-params(35)*params(57))/((1+params(35)*params(64))*params(57))));
  g1(16,107)=1;
  g1(16,108)=1;
  g1(16,109)=1;
  g1(16,135)=1;
  g1(17,4)=(-(params(65)/(1+params(35)*params(65))));
  g1(17,92)=1;
  g1(17,239)=(-(params(35)/(1+params(35)*params(65))));
  g1(17,109)=(-((1-params(58))*(1-params(35)*params(58))/((1+params(35)*params(65))*params(58))));
  g1(17,130)=T3;
  g1(17,131)=T3-(params(35)/(1+params(35)*params(65))*(-params(48))-params(65)/(1+params(35)*params(65))-(1-params(48))*params(35)*params(65)/(1+params(35)*params(65)));
  g1(18,89)=(-(T337*params(115)));
  g1(18,236)=(-(T337*params(116)));
  g1(18,5)=(-(T337*params(112)));
  g1(18,93)=1;
  g1(18,240)=(-(T337*params(114)));
  g1(18,96)=(-(T337*params(119)));
  g1(18,99)=(-(T337*params(120)));
  g1(18,116)=(-(T337*params(121)));
  g1(18,118)=(-(T337*params(122)));
  g1(18,123)=T3;
  g1(18,131)=(-(T337*((-params(115))+params(116)*(-params(48))-params(117)+params(118)*(-params(48)))));
  g1(18,36)=(-(T337*params(117)));
  g1(18,136)=(-(T337*params(118)));
  g1(19,6)=(-(T386*(-(params(73)*params(70)))));
  g1(19,94)=1;
  g1(19,241)=(-(T386*params(73)*params(35)*(-params(70))));
  g1(19,96)=(-(T386*(params(73)-params(35)*params(70))*(params(73)-params(70))));
  g1(19,117)=(-(T386*(params(73)-params(70))*(params(73)-params(35)*params(70))*params(47)/(1+params(47))));
  g1(19,121)=(-(T386*params(73)*params(70)));
  g1(19,248)=(-(T386*params(73)*params(70)*(-params(35))));
  g1(19,122)=T3;
  g1(19,249)=(-(T386*(-(params(35)*(-params(70))*(params(73)-params(70))))));
  g1(19,142)=(-(T386*(params(73)-params(35)*params(70))*(params(73)-params(70))));
  g1(20,7)=(-(T380*params(69)*T431));
  g1(20,95)=1;
  g1(20,242)=(-(T431*params(35)*T380*params(69)));
  g1(20,97)=(-T431);
  g1(20,121)=(-(T431*(-(T380*params(69)))));
  g1(20,248)=(-(T431*params(35)*T380*params(69)));
  g1(20,128)=T3;
  g1(20,143)=T431;
  g1(21,236)=(-params(39));
  g1(21,96)=(-params(39));
  g1(21,243)=params(39);
  g1(21,110)=params(39)-params(35)*params(75);
  g1(21,247)=T463*(params(35)-params(39));
  g1(21,248)=(-params(39));
  g1(22,96)=1;
  g1(22,243)=T3;
  g1(22,97)=1;
  g1(22,244)=(-(params(35)*(1-params(41))/params(73)));
  g1(22,247)=T486;
  g1(22,248)=1;
  g1(22,250)=(-T481);
  g1(23,245)=1;
  g1(23,105)=(-params(76));
  g1(23,110)=T3;
  g1(23,114)=1;
  g1(23,127)=1;
  g1(24,94)=T510;
  g1(24,95)=T522;
  g1(24,99)=(-(params(66)*(1-params(36))));
  g1(24,8)=(-T554);
  g1(24,101)=(-(params(36)*params(66)-T554));
  g1(24,108)=T532*(-params(72));
  g1(24,113)=T532;
  g1(24,119)=params(49);
  g1(24,120)=(-params(66));
  g1(24,121)=(-(params(66)*(-params(36))));
  g1(24,129)=T532;
  g1(24,142)=params(37)*T510;
  g1(24,143)=params(71)*T522;
  g1(25,95)=(-(1-T561));
  g1(25,8)=(-T561);
  g1(25,100)=1;
  g1(25,121)=T561;
  g1(25,128)=T3;
  g1(26,96)=T572;
  g1(26,102)=1;
  g1(26,15)=(-(T572*(-(params(125)/(params(125)-1)))));
  g1(26,115)=(-(T463*T572));
  g1(27,89)=T3;
  g1(27,9)=1;
  g1(27,103)=T3;
  g1(27,104)=1;
  g1(27,121)=T3;
  g1(28,89)=T600;
  g1(28,93)=params(45)*params(137)*params(143);
  g1(28,99)=params(45)*params(137)*params(143);
  g1(28,102)=params(148);
  g1(28,9)=(-T600);
  g1(28,104)=(-T600);
  g1(28,121)=T600;
  g1(29,94)=params(153);
  g1(29,95)=params(154);
  g1(29,10)=(-(params(125)/(params(73)*params(124))));
  g1(29,105)=1;
  g1(29,106)=params(153)*T629;
  g1(29,107)=params(154)*T638;
  g1(29,108)=params(155)*params(72);
  g1(29,109)=params(155);
  g1(29,113)=(-params(155));
  g1(29,129)=(-params(155));
  g1(29,141)=(-(params(153)+params(154)));
  g1(30,89)=1;
  g1(30,90)=T3;
  g1(30,11)=T3;
  g1(30,106)=1;
  g1(31,89)=1;
  g1(31,91)=T3;
  g1(31,12)=T3;
  g1(31,107)=1;
  g1(32,92)=T3;
  g1(32,13)=T3;
  g1(32,108)=1;
  g1(32,112)=1;
  g1(33,89)=T3;
  g1(33,92)=1;
  g1(33,98)=1;
  g1(33,14)=T3;
  g1(33,109)=1;
  g1(34,108)=T3;
  g1(34,109)=T3;
  g1(34,141)=1;
  g1(35,106)=(-T672);
  g1(35,142)=1;
  g1(36,107)=(-T677);
  g1(36,143)=1;
  g1(37,89)=(-T682);
  g1(37,90)=(-T672);
  g1(37,136)=1;
  g1(38,99)=(-(params(66)*(1-params(36))));
  g1(38,101)=(-(params(36)*params(66)));
  g1(38,120)=(-params(66));
  g1(38,121)=(-(params(66)*(-params(36))));
  g1(38,137)=1;
  g1(39,106)=(-T692);
  g1(39,108)=1;
  g1(39,109)=1;
  g1(39,138)=1;
  g1(40,99)=(-((1-params(60))*(1-params(35)*params(60))/((1+params(35))*params(60))));
  g1(40,16)=(-(1/(1+params(35))));
  g1(40,111)=1-(-((1-params(60))*(1-params(35)*params(60))/((1+params(35))*params(60))));
  g1(40,246)=(-(params(35)/(1+params(35))));
  g1(41,115)=T721;
  g1(41,133)=(-T718);
  g1(41,140)=1;
  g1(42,8)=1;
  g1(42,101)=T3;
  g1(42,140)=1;
  g1(43,144)=1;
  g1(44,170)=1;
  g1(45,172)=1;
  g1(46,173)=1;
  g1(47,164)=1;
  g1(48,120)=1;
  g1(48,121)=(-params(36));
  g1(48,148)=T3;
  g1(48,154)=(-params(36));
  g1(48,156)=params(36);
  g1(48,170)=1;
  g1(48,177)=T3;
  g1(49,121)=T3;
  g1(49,148)=T3;
  g1(49,154)=T3;
  g1(49,156)=1;
  g1(49,171)=1;
  g1(49,177)=T3;
  g1(50,46)=(-T229);
  g1(50,177)=1;
  g1(51,161)=1;
  g1(51,163)=1;
  g1(51,164)=1;
  g1(51,172)=1;
  g1(52,162)=1;
  g1(52,163)=1;
  g1(52,164)=1;
  g1(52,173)=1;
  g1(53,116)=(-params(46))/(1-params(46));
  g1(53,118)=(-(params(74)/(1+params(74))));
  g1(53,123)=T3;
  g1(53,148)=1;
  g1(53,151)=1;
  g1(53,154)=(-params(40));
  g1(54,117)=(-(T386*(params(73)-params(70))*(params(73)-params(35)*params(70))*params(47)/(1+params(47))));
  g1(54,121)=(-(T386*params(73)*params(70)));
  g1(54,248)=(-(T386*params(73)*params(70)*(-params(35))));
  g1(54,122)=T3;
  g1(54,249)=(-(T386*(-(params(35)*(-params(70))*(params(73)-params(70))))));
  g1(54,37)=(-(T386*(-(params(73)*params(70)))));
  g1(54,149)=1;
  g1(54,252)=(-(T386*params(73)*params(35)*(-params(70))));
  g1(54,151)=(-(T386*(params(73)-params(35)*params(70))*(params(73)-params(70))));
  g1(54,180)=(-(T386*(params(73)-params(35)*params(70))*(params(73)-params(70))));
  g1(55,121)=(-(T431*(-(T380*params(69)))));
  g1(55,248)=(-(T431*params(35)*T380*params(69)));
  g1(55,128)=T3;
  g1(55,38)=(-(T380*params(69)*T431));
  g1(55,150)=1;
  g1(55,253)=(-(T431*params(35)*T380*params(69)));
  g1(55,152)=(-T431);
  g1(55,181)=T431;
  g1(56,247)=T463*(params(35)-params(39));
  g1(56,248)=(-params(39));
  g1(56,251)=(-params(39));
  g1(56,151)=(-params(39));
  g1(56,254)=params(39);
  g1(56,165)=params(39)-params(35)*params(75);
  g1(57,247)=T486;
  g1(57,248)=1;
  g1(57,151)=1;
  g1(57,254)=T3;
  g1(57,152)=1;
  g1(57,255)=(-(params(35)*(1-params(41))/params(73)));
  g1(57,257)=(-T481);
  g1(58,127)=1;
  g1(58,256)=1;
  g1(58,160)=(-params(76));
  g1(58,165)=T3;
  g1(58,184)=1;
  g1(59,119)=params(49);
  g1(59,120)=(-params(66));
  g1(59,121)=(-(params(66)*(-params(36))));
  g1(59,129)=T532;
  g1(59,149)=T510;
  g1(59,150)=T522;
  g1(59,154)=(-(params(66)*(1-params(36))));
  g1(59,39)=(-T554);
  g1(59,156)=(-(params(36)*params(66)-T554));
  g1(59,163)=T532*(-params(72));
  g1(59,180)=params(37)*T510;
  g1(59,181)=params(71)*T522;
  g1(59,183)=T532;
  g1(60,121)=T561;
  g1(60,128)=T3;
  g1(60,150)=(-(1-T561));
  g1(60,39)=(-T561);
  g1(60,155)=1;
  g1(61,115)=(-(T463*T572));
  g1(61,151)=T572;
  g1(61,157)=1;
  g1(61,46)=(-(T572*(-(params(125)/(params(125)-1)))));
  g1(62,121)=T3;
  g1(62,144)=T3;
  g1(62,40)=1;
  g1(62,158)=T3;
  g1(62,159)=1;
  g1(63,121)=T600;
  g1(63,144)=T600;
  g1(63,148)=params(45)*params(137)*params(143);
  g1(63,154)=params(45)*params(137)*params(143);
  g1(63,157)=params(148);
  g1(63,40)=(-T600);
  g1(63,159)=(-T600);
  g1(64,129)=(-params(155));
  g1(64,149)=params(153);
  g1(64,150)=params(154);
  g1(64,41)=(-(params(125)/(params(73)*params(124))));
  g1(64,160)=1;
  g1(64,161)=params(153)*T629;
  g1(64,162)=params(154)*T638;
  g1(64,163)=params(155)*params(72);
  g1(64,164)=params(155);
  g1(64,179)=(-(params(153)+params(154)));
  g1(64,183)=(-params(155));
  g1(65,144)=1;
  g1(65,145)=T3;
  g1(65,42)=T3;
  g1(65,161)=1;
  g1(66,144)=1;
  g1(66,146)=T3;
  g1(66,43)=T3;
  g1(66,162)=1;
  g1(67,147)=T3;
  g1(67,44)=T3;
  g1(67,163)=1;
  g1(67,182)=1;
  g1(68,144)=T3;
  g1(68,147)=1;
  g1(68,153)=1;
  g1(68,45)=T3;
  g1(68,164)=1;
  g1(69,163)=T3;
  g1(69,164)=T3;
  g1(69,179)=1;
  g1(70,161)=(-T672);
  g1(70,180)=1;
  g1(71,162)=(-T677);
  g1(71,181)=1;
  g1(72,144)=(-T682);
  g1(72,145)=(-T672);
  g1(72,174)=1;
  g1(73,120)=(-params(66));
  g1(73,121)=(-(params(66)*(-params(36))));
  g1(73,154)=(-(params(66)*(1-params(36))));
  g1(73,156)=(-(params(36)*params(66)));
  g1(73,175)=1;
  g1(74,161)=(-T692);
  g1(74,163)=1;
  g1(74,164)=1;
  g1(74,176)=1;
  g1(75,115)=T721;
  g1(75,171)=(-T718);
  g1(75,178)=1;
  g1(76,39)=1;
  g1(76,156)=T3;
  g1(76,178)=1;
  g1(77,20)=(-params(52));
  g1(77,115)=1;
  g1(77,270)=(-params(250));
  g1(78,23)=(-params(53));
  g1(78,118)=1;
  g1(78,271)=(-params(251));
  g1(79,21)=(-params(207));
  g1(79,116)=1;
  g1(79,22)=(-params(208));
  g1(79,24)=(-params(209));
  g1(79,185)=(-params(234));
  g1(79,272)=(-params(232));
  g1(79,273)=(-params(231));
  g1(79,68)=(-params(216));
  g1(79,69)=(-params(217));
  g1(79,70)=(-params(218));
  g1(80,21)=(-params(210));
  g1(80,22)=(-params(211));
  g1(80,117)=1;
  g1(80,24)=(-params(212));
  g1(80,185)=(-params(239));
  g1(80,272)=(-params(237));
  g1(80,273)=(-params(236));
  g1(80,68)=(-params(219));
  g1(80,69)=(-params(220));
  g1(80,70)=(-params(221));
  g1(81,21)=(-params(213));
  g1(81,22)=(-params(214));
  g1(81,24)=(-params(215));
  g1(81,119)=1;
  g1(81,185)=(-params(249));
  g1(81,272)=(-params(247));
  g1(81,273)=(-params(246));
  g1(81,68)=(-params(222));
  g1(81,69)=(-params(223));
  g1(81,70)=(-params(224));
  g1(82,17)=(-params(162));
  g1(82,112)=1;
  g1(82,18)=(-params(163));
  g1(82,19)=(-params(164));
  g1(82,286)=(-params(198));
  g1(82,287)=(-params(199));
  g1(82,288)=(-params(200));
  g1(82,71)=(-params(171));
  g1(82,72)=(-params(172));
  g1(82,73)=(-params(173));
  g1(82,74)=(-params(180));
  g1(82,75)=(-params(181));
  g1(82,76)=(-params(182));
  g1(82,77)=(-params(189));
  g1(82,78)=(-params(190));
  g1(82,79)=(-params(191));
  g1(83,17)=(-params(165));
  g1(83,18)=(-params(166));
  g1(83,113)=1;
  g1(83,19)=(-params(167));
  g1(83,286)=(-params(201));
  g1(83,287)=(-params(202));
  g1(83,288)=(-params(203));
  g1(83,71)=(-params(174));
  g1(83,72)=(-params(175));
  g1(83,73)=(-params(176));
  g1(83,74)=(-params(183));
  g1(83,75)=(-params(184));
  g1(83,76)=(-params(185));
  g1(83,77)=(-params(192));
  g1(83,78)=(-params(193));
  g1(83,79)=(-params(194));
  g1(84,17)=(-params(168));
  g1(84,18)=(-params(169));
  g1(84,19)=(-params(170));
  g1(84,114)=1;
  g1(84,286)=(-params(204));
  g1(84,287)=(-params(205));
  g1(84,288)=(-params(206));
  g1(84,71)=(-params(177));
  g1(84,72)=(-params(178));
  g1(84,73)=(-params(179));
  g1(84,74)=(-params(186));
  g1(84,75)=(-params(187));
  g1(84,76)=(-params(188));
  g1(84,77)=(-params(195));
  g1(84,78)=(-params(196));
  g1(84,79)=(-params(197));
  g1(85,182)=1;
  g1(86,47)=(-params(165));
  g1(86,48)=(-params(166));
  g1(86,183)=1;
  g1(86,49)=(-params(167));
  g1(86,287)=(-params(202));
  g1(86,288)=(-params(203));
  g1(86,80)=(-params(174));
  g1(86,81)=(-params(175));
  g1(86,82)=(-params(176));
  g1(86,83)=(-params(183));
  g1(86,84)=(-params(184));
  g1(86,85)=(-params(185));
  g1(86,86)=(-params(192));
  g1(86,87)=(-params(193));
  g1(86,88)=(-params(194));
  g1(87,47)=(-params(168));
  g1(87,48)=(-params(169));
  g1(87,49)=(-params(170));
  g1(87,184)=1;
  g1(87,287)=(-params(205));
  g1(87,288)=(-params(206));
  g1(87,80)=(-params(177));
  g1(87,81)=(-params(178));
  g1(87,82)=(-params(179));
  g1(87,83)=(-params(186));
  g1(87,84)=(-params(187));
  g1(87,85)=(-params(188));
  g1(87,86)=(-params(195));
  g1(87,87)=(-params(196));
  g1(87,88)=(-params(197));
  g1(88,124)=1;
  g1(88,274)=T3;
  g1(89,29)=(-params(84));
  g1(89,125)=1;
  g1(89,275)=T3;
  g1(90,30)=(-params(85));
  g1(90,126)=1;
  g1(90,276)=T3;
  g1(91,34)=(-params(86));
  g1(91,130)=1;
  g1(91,277)=T3;
  g1(92,166)=1;
  g1(93,167)=1;
  g1(94,168)=1;
  g1(95,169)=1;
  g1(96,26)=(-params(77));
  g1(96,121)=1;
  g1(96,278)=T3;
  g1(97,25)=(-params(78));
  g1(97,120)=1;
  g1(97,279)=T3;
  g1(98,32)=(-params(79));
  g1(98,128)=1;
  g1(98,280)=T3;
  g1(99,33)=(-params(80));
  g1(99,129)=1;
  g1(99,281)=T3;
  g1(100,27)=(-params(81));
  g1(100,122)=1;
  g1(100,282)=T3;
  g1(101,28)=(-params(82));
  g1(101,123)=1;
  g1(101,283)=T3;
  g1(102,31)=(-params(83));
  g1(102,127)=1;
  g1(102,284)=T3;
  g1(103,35)=(-params(48));
  g1(103,131)=1;
  g1(103,285)=T3;
  g1(104,258)=T3;
  g1(104,192)=1;
  g1(105,261)=T3;
  g1(105,193)=1;
  g1(106,262)=T3;
  g1(106,194)=1;
  g1(107,259)=T3;
  g1(107,195)=1;
  g1(108,264)=T3;
  g1(108,196)=1;
  g1(109,265)=T3;
  g1(109,197)=1;
  g1(110,260)=T3;
  g1(110,198)=1;
  g1(111,267)=T3;
  g1(111,199)=1;
  g1(112,268)=T3;
  g1(112,200)=1;
  g1(113,36)=T3;
  g1(113,201)=1;
  g1(114,54)=T3;
  g1(114,202)=1;
  g1(115,53)=T3;
  g1(115,203)=1;
  g1(116,56)=T3;
  g1(116,204)=1;
  g1(117,57)=T3;
  g1(117,205)=1;
  g1(118,52)=T3;
  g1(118,206)=1;
  g1(119,59)=T3;
  g1(119,207)=1;
  g1(120,60)=T3;
  g1(120,208)=1;
  g1(121,50)=T3;
  g1(121,209)=1;
  g1(122,62)=T3;
  g1(122,210)=1;
  g1(123,63)=T3;
  g1(123,211)=1;
  g1(124,51)=T3;
  g1(124,212)=1;
  g1(125,65)=T3;
  g1(125,213)=1;
  g1(126,66)=T3;
  g1(126,214)=1;
  g1(127,21)=T3;
  g1(127,215)=1;
  g1(128,22)=T3;
  g1(128,216)=1;
  g1(129,24)=T3;
  g1(129,217)=1;
  g1(130,17)=T3;
  g1(130,218)=1;
  g1(131,18)=T3;
  g1(131,219)=1;
  g1(132,19)=T3;
  g1(132,220)=1;
  g1(133,71)=T3;
  g1(133,221)=1;
  g1(134,72)=T3;
  g1(134,222)=1;
  g1(135,73)=T3;
  g1(135,223)=1;
  g1(136,74)=T3;
  g1(136,224)=1;
  g1(137,75)=T3;
  g1(137,225)=1;
  g1(138,76)=T3;
  g1(138,226)=1;
  g1(139,47)=T3;
  g1(139,227)=1;
  g1(140,48)=T3;
  g1(140,228)=1;
  g1(141,49)=T3;
  g1(141,229)=1;
  g1(142,80)=T3;
  g1(142,230)=1;
  g1(143,81)=T3;
  g1(143,231)=1;
  g1(144,82)=T3;
  g1(144,232)=1;
  g1(145,83)=T3;
  g1(145,233)=1;
  g1(146,84)=T3;
  g1(146,234)=1;
  g1(147,85)=T3;
  g1(147,235)=1;

if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],147,84100);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],147,24389000);
end
end
end
end
