function [y] = fun12_isv2(x)
% F-ja leidzia apskaiciuot y' reiksmia kai zinomas x, f-ja y=ln(x)-7/(2*x+6);.
% Panaudojimas:
%             x=1; z= fun12(x)
%                  z= fun12(1)

y= - 7/(x + 3)^3 - 1/x^2;
end