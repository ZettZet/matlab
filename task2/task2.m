function S = task2()
    x = input('x is ');

    local_s = 0;                   
    counter_index = 0;

    mult_by = sqrt(2 * x / pi);

    epsylon = 10^(-10);
    temp = x/3;

    table = [];

    while abs(temp) > epsylon
		local_s = local_s + temp;
		
		table = [table; counter_index+1 (mult_by * temp) (mult_by * local_s)];
		
		temp = temp * ((-x) * x * (4 * counter_index + 3))/(2 * (counter_index + 1) * (2 * counter_index + 3) * (4 * counter_index + 7));
		counter_index = counter_index + 1;
	end

    table = array2table(table, 'VariableNames', {'counter', 'memember', 'sum'});
    writetable(table, 'task2.csv');	

	fre = fresnels(sqrt(2*x/pi));
	disp(fre);                   
	
	S = mult_by * local_s;
end
