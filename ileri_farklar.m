function [y_num, x_num] = ileri_farklar(x0,y0,h,N)
% y'(x) = f_x(x) ve y(x0) = y0 ile verilen denkleminm ileri farklar ile
% cozumu.

% NOT: Odev icin verilen ileri_farklar.m, f_x.m ve 
% analitik_cozum.m ayni klasor icinde bulunmalidir.

% x0 ve y0, baslangic degeri icin kullanilan y(x0)=y0
% h: adim araligi
% N: adim sayisi 
% y_num: ileri farkli ile elde edilen cozum
% x_num: elde edilen cozumun tanimlandigi x degerleri 
% ornek:
% >> [y_num, x_num] = ileri_farklar(0,1,0.1,100);

x_num = x0:h:N*h+x0;
y_num = zeros(size(x_num));
y_num(1) = y0;

for ii=1:1:N
    y_num(ii+1) = f_x(x_num(ii)) * h + y_num(ii);
end

end

