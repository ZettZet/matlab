function output = task6_2(arr)
	global counter;
	persistent param; 
	
	if isempty(param)
		param = 0;
	end
	
	param = param + 1;
	counter = counter + 1;
	fprintf('Parameters`s function calls %d times\n', param);

    indexes_pos = arr > 0;
    indexes_neg = arr < 0;

    output = [arr(indexes_pos) arr(indexes_neg)];
end
