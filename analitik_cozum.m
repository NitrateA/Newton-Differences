function [y_analitik, x_analitik] = analitik_cozum(x_analitik,x0,y0)
% y'(x) = f_x(x) ve y(x0) = y0 ile verilen denkleminin symbolic toolbox ile
% cozumu. 
% NOT: Odev icin verilen ileri_farklar.m, f_x.m ve bu dosya
% (analitik_cozum.m) ayni klasor icinde bulunmalidir.
%
% NOT: Eger hata alirsaniz bilgisayarinizda symbolic toolbox yuklu
% olmayabilir. Cozumu el ile elde ediniz. 

syms y(x)
y_analitik_fonksiyon = matlabFunction(dsolve(diff(y)==f_x(x), y(x0)==y0));
y_analitik = y_analitik_fonksiyon(x_analitik);
end