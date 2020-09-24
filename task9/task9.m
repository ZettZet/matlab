function task9()
    a = input('Left edge of interval ');
    b = input('Right edge of interval ');
    task9_1(a, b)

    zero = task9_2();
	disp('Zeroes of function');
    disp(zero);

    extremums = task9_3();
	disp('Global extremums');
    disp(extremums);

    taylor = task9_4();
	disp('Taylor expansion at x = 1');
    pretty(taylor);

    limits = task9_5();
	disp('Limit at plus infinity and right side limit at zero correspondingly');
    disp(limits);

end
