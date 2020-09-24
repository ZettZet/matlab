function task4_1()
    y_result_greater = [];
    y_result_lessorequal = [];

    x_result_greater = [];
    x_result_lessorequal = [];

    for x = linspace(-2, 2)

        if (x <= 0)
            x_result_lessorequal = [x_result_lessorequal (x)];
            y_result_lessorequal = [y_result_lessorequal (lessOrEqual(x))];
        else
            x_result_greater = [x_result_greater (x)];
            y_result_greater = [y_result_greater (greater(x))];
        end

    end

    plot(x_result_lessorequal, y_result_lessorequal, 'r', x_result_greater, y_result_greater, 'r');
    title('Using loops', 'Interpreter', 'latex');
    legend('$y(x)=\sqrt{x^2+1}, x\leq 0$', '$y(x)=\frac{x+1}{\sqrt[3]{1+{\mathrm{e}}^{-0.5x}+1}}, x>0$', 'Interpreter', 'latex', 'FontSize', 14);
end
