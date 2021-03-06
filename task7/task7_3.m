function output = task7_3()
    func = @(x) ((x.^2) .* (x + 1).^(-2));

    a = 1;
    b = 4;

    output = integral(func, a, b, 'RelTol', 1e-6);
end
