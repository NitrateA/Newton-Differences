function [y_num, x_num] = merkez_farklar(x0,y0,h,N)
% y'(x) = f_x(x) ve y(x0) = y0 ile verilen denklemin geri farklar ile cozumu.
%
% x0 ve y0, baslangic degeri icin kullanilan y(x0)=y0
% h: adim araligi
% N: adim sayisi 
% y_num: geri farkli ile elde edilen cozum
% x_num: elde edilen cozumun tanimlandigi x degerleri 
% ornek:
% >> [y_num, x_num] = geri_farklar(0,1,0.1,100);

x_num = x0:h:N*h+x0;
y_num = zeros(size(x_num));
y_num(1) = y0;

for ii = 2:N+1
    % Geri farklar formülünü kullanarak yeni y değerini hesapla
    y_num(ii) =  y_num(ii-1) - f_x(x_num(ii-1)) * h;
end
end