function output = task7_1()
    syms x;
    
    func = (x^2) * ((x + 1)^ (- 2));

    integral = int(func);
    derivative = diff(integral);
    
    output = [integral, isequal(factor(derivative), factor(func))];
end
