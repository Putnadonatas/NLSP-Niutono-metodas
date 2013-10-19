function [ans] = Niutono(func,func_isv,func_isv2,x1,x2,E,xa)
% Sia F-ja randamas taskas kuris kerta x asi.
%Parametrai:
%   @func - pradine f-ja.
%   @fun_isv f-jos isvestine(pirma).
%   @fun_isv2 - f-jos isvestine(antra).
%   x1- pradinis intervalo skaicius, x2-galutinis intervalo skaicius.
%   E-epsilonas maksimalus nuokrypis nuo galutinio rez (nebutina ivest)
%   xa- skaicius intervale [x1;x2] (nebutina ivest)
%Naudojimas:
%   x1=1; x2=2; E=0.001; xa=1.5;
%   z = Niutono(@func,@func_isv,@func_isv2,x1,x2,E,xa);
%   z= Niutono(@func,@func_isv,@func_isv2,1,2,0.001,1.5);

if nargin<7 
         xa =x1+(x2-x1)*rand(1);             
 end
if nargin<6 
            E=0.01; 
 end
if nargin<5 
            error('permazai ivestu parametru');             
end
f1 = func(x1);
if abs(f1) <10^(-10); saknis = x1; return; end
f2 = func(x2);
if abs(f2) <10^(-10); saknis = x2; return; end
if f1*f2 > 0.0;
error('Nurodytame intervale (x1,x2) nera funkcijos nulio')
end
%Antras--------------------------
%KONVERGAVIMO SALYGA
j=x1:0.1:x2;
for i=1:length(j(1,:));
  fj(i)=func_isv(j(i));
  fj2(i)=func_isv2(j(i));
 end
 if abs(min(fj))>0
    if abs(max(fj2))>99999999999
     error('konvergacijos salyga nepatenkinta ');
     end
else error('konvergacijos salyga nepatenkinta nes pirma isvestine lygi nuliui'); 
%paklaida------------------------
pk = 1;
n=1;
x=zeros(1,100);
x(n)=xa;
%While ciklas---------------------

while (pk > E) 
   x(n+1)=x(n)-((func(x(n))/func_isv(x(n)))) 
   pk = abs(x(n+1)-x(n))
   n = n+1;
   ans=x(n);   
end
end