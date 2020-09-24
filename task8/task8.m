function task8()
    first = task8_1();
    second = task8_2();
    xx = linspace(0, 2);

    plot(first.x, first.y, xx, second(xx));
    legend('Numerical solution', 'Numerical solution', 'Symbolic solution');
    title('Differential equation solutions');
end
