function task4_1()
	TOLLERANCE = 10^(-6);
	points = fix(4/TOLLERANCE);
	
	
    y_result_greater = zeros(1, points/2);
    y_result_lessorequal = zeros(1, points/2);

    x_result_greater = zeros(1, points/2);
    x_result_lessorequal = zeros(1, points/2);

    for i = 1:points
        if (-2+i*TOLLERANCE <= 0)
            x_result_lessorequal(i) = -2+i*TOLLERANCE;
            y_result_lessorequal(i) = lessOrEqual(-2+i*TOLLERANCE);
		elseif (-2+i*TOLLERANCE > 0)
            x_result_greater(i) = -2+i*TOLLERANCE;
            y_result_greater(i) = greater(-2+i*TOLLERANCE);
		end
	end
	
	index = find(y_result_greater == 0 & x_result_greater == 0);
	y_result_greater(index) = [];
	x_result_greater(index) = [];

    plot(x_result_lessorequal, y_result_lessorequal, 'r', x_result_greater, y_result_greater, 'r');
	hold on
    scatter(0, greater(0));
    hold off
    title('Using loops', 'Interpreter', 'latex');
    legend('$y(x)=\sqrt{x^2+1}, x\leq 0$', '$y(x)=\frac{x+1}{\sqrt[3]{1+{\mathrm{e}}^{-0.5x}+1}}, x>0$', 'Interpreter', 'latex', 'FontSize', 14);
end
