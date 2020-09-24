function task4_2()
    x_less = linspace(-2, 0);
    x_greater = linspace(0, 2);

    y_less = arrayfun(@(x) lessOrEqual(x), x_less);
    y_greater = arrayfun(@(x) greater(x), x_greater);

    plot(x_less, y_less, 'b', x_greater, y_greater, 'b');
    title('Using MATLAB functions', 'Interpreter', 'latex');
    legend('$y(x)=\sqrt{x^2+1}, x\leq 0$', '$y(x)=\frac{x+1}{\sqrt[3]{1+{\mathrm{e}}^{-0.5x}+1}}, x>0$', 'Interpreter', 'latex', 'FontSize', 14);
end
