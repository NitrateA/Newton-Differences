function [y] = f_x(x)
% y'=f(x) diferansiyel denkleminin sag tarafdindaki fonksiyon.
% 12.03.2024
% Edirne TU AA
% >> f_x(0.1)
%y=2*x;
y=exp(-0.5*x)*(-sin(x)+3*cos(2*x)-7*sin(4*x));

end

