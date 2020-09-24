function output = task7_2()
    syms x;
    a = 1;
    b = 4;

    func = (x^2) * ((x + 1)^(- 2));
    integral = int(func, a, b);

    output = integral;
end
