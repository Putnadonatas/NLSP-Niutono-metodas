function [ans] = fun12(x)
% F-ja leidzia apskaiciuot y reiksmia kai zinomas x, f-joje y=ln(x)-7/(2*x+6);.
% Panaudojimas:
%             x=1; z= fun12(x)
%                  z= fun12(1)
if (x>0)
    ans= log(x)-7/(2*x+6);
else ans=NaN;
end