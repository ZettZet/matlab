function output = task10_2(A, b)
    [r, c] = size(A);
    determinant = det(A);

    if (r ~= c)
        error('Unsolvable by  Cramer`s rule');
    end

    if (r ~= length(b))
        error('Vector length does not coincide with the matrix dimensions');
    end

    size_arr = size(A, 1);

    result = zeros(size_arr, 1);
	
	counterZeroDet = 0;

    for i = 1:size_arr
        B = A;
        B(:, i) = b;
		detB = det(B);
		
		if(determinant == 0 && detB == 0)
			counterZeroDet = counterZeroDet + 1;
		end
		
        result(i) =  detB / determinant;
	end
	
	if (determinant == 0 && counterZeroDet ~= size_arr)
		error('System hasn`t solution');
	elseif (determinant == 0 && counterZeroDet == size_arr)
		error('System has infinitly many solutions');
	else
		output = result;
	end
end
