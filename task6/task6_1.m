function task6_1()
    global A
	
	if isempty(A)
		error('global A is empty');
	end
	
	global counter;
	persistent glob; 
	
	if isempty(glob)
		glob = 0;
	end
	
	glob = glob + 1;
	counter = counter + 1;
	fprintf('Global`s function calls %d times\n', glob);

    indexes_pos = A > 0;
    indexes_neg = A < 0;
	global output;
	
	output = [A(indexes_pos) A(indexes_neg)];
end
