function saknys = pilnasNM(func,func_isv,func_isv2,a,b,dx,tol)
% Paprastuju iteraciju metodu surandami visi funkcijos f(x) nuliai intervale (a,b).
% IVEDIMO PARAMETRAI:
%  @func - pradine f-ja.
%   @fun_isv f-jos isvestine(pirma).
%   @fun_isv2 - f-jos isvestine(antra).
%   a- pradinis intervalo skaicius, b-galutinis intervalo skaicius.
%   E-epsilonas maksimalus nuokrypis nuo galutinio rez (nebutina ivest)
%   xa- skaicius intervale [x1;x2] (nebutina ivest)
%   filter - singuliarumo filtras: 0 = iðjungta (pagal nutylejima), 1 = ijungta.
%   tol - paklaida (pagal nutylejima 0.0001).
%   dx - zingsnio ilgis kreipiantis i sklaidos metoda (b-a)/n
%Paleidmas:
%saknis = pilnasNM(func,func_isv,func_isv2,a,b,dx,filter,tol,xa);


if nargin<6 
        tol=0.01;             
end
if nargin<5 
            dx=0.01;
end
if nargin<5 
           error('per mazai ivesta elementu');
end
if a<0
 a=10^(-10);
end
  if a<0 a=0;
  end
a_pradinis=a;
saknusk = 0;
while 1
 [x1,x2] = skaidosmetodas(func,a,b,1);
 if isnan(x1) 
    disp('Daugiau sprendiniu nera');
    break
 else
   a = x2;
   saknis = Niutono(func,func_isv,func_isv2,x1,x2,tol);
    if ~isnan(saknis)
         saknusk = saknusk + 1;
                     if saknis < b
                      saknys(saknusk) = saknis;
                     end
end
end
end
x=a_pradinis:0.1:b;
for i=1:length(x(1,:))
  y(1,i) = func(x(1,i));
end
plot(x,y)
hold on;
x_saknys = saknys;
y_saknys = func(x_saknys);
scatter(x_saknys, y_saknys,'*r');