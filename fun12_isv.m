function [ans] = fun12_isv(x)
% F-ja leidzia apskaiciuot y' reiksmia kai zinomas x, f-ja y=ln(x)-7/(2*x+6);.
% Panaudojimas:
%             x=1; z= fun12(x)
%                  z= fun12(1)
if ((x~=0) | (x~=-3))
    ans= 7/(2*(x^2+ x *6 +9));
else error(' f-jos reiksme nezinoma');
end   