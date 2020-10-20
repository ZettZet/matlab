function task6()
	global A;
	A = input('Enter a one-dimensional array (not a column vector) ');
	
	global counter;
	counter = 0;

    disp('Result of globals');
    task6_1();
	global output;
    disp(output);

    disp('Result of parametrs');
    second = task6_2(A);
	disp(second);

    disp('Is the same?:');
    disp(isequal(output, second));
	
	fprintf('Total function cals is %d\n', counter);
end
