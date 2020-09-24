a = 1.7;
b = -1.25;
c = -0.3;
x = 2.5;
k = 3;

if (k == 0) || (x == 0)
    error('Dividion by zero');
elseif (a * b * c < 0)
    error('Negative number in square root');
else
    y = sqrt((a * b * c) / 2.4) - ((0.7 * a * b * c) / sin(7)) - (10^4) * nthroot(abs(cos(k * x)), 5) -(abs(b - a) / (k * x))
end
