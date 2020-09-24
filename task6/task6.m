function task6()
	arr = input('Enter a one-dimensional array (not a vector) ');

    globals(arr);

    disp('Result of globals');
    first = task6_1();
    disp(first);

    disp('Result of parametrs');
    second = task6_2(arr);
    disp(second);

    disp('Is the same?:');
    disp(isequal(first, second));
end
