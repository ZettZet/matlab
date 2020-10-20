function output = task8_2()
    syms y(x);
    Dy = diff(y);

    ode = (diff(y, x, 2) - 2 * diff(y, x) + 2 * y == exp(x) + x * cos(x));
    conds = [(y(0) == 0) (Dy(0) == 0)];
    ySol(x) = dsolve(ode, conds);

    output = collect(collect(simplify(ySol), sin(x)), cos(x));
end
