function output = task9_5()
    syms x;

    func = 3 - 0.3 * sqrt(x) + 0.5 * log(x);

    plusinf = limit(func, x, +inf);
    zeroright = limit(func, x, 0, 'right');

    output = [plusinf, zeroright];
end
