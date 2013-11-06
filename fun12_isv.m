function [y] = fun12_isv(x)
% F-ja leidzia apskaiciuot y' reiksmia kai zinomas x, f-ja y=ln(x)-7/(2*x+6);.
% Panaudojimas:
%             x=1; z= fun12(x)
%                  z= fun12(1)
    y=7/(2*(x + 3)^2) + 1/x; 
end   