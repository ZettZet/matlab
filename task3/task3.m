function task3()
    arr = readmatrix('task3.txt');

    cols = input('How many colomns do you want? ');
    printer(arr, cols);

    first = loops(arr);
    disp(first);

    second = inMatlab(arr);
    disp(second);

end

function ret_val = loops(arr)
    disp('Using loops')

    counter = 0;
    sum_of = 0;

    for i = length(arr):-1:1

        if counter == 5
            break;
        end

        if arr(i) < 5
            sum_of = sum_of + arr(i);
            counter = counter + 1;
        end

    end

    ret_val = sum_of;

end

function ret_val = inMatlab(arr)
    disp('Using MATLAB functions')
    indexes = find(arr < 5);

    if length(indexes) >= 5
        ret_val = sum(arr(indexes(end - 5 + 1:end)));
    else
        ret_val = sum(arr(indexes));
    end

end

function printer(arr, col)
    len = length(arr);
    row = ceil(len / col);
    str = '';
    template = int2str(length(int2str(len)));
	template = strcat('\tA[%', template);
	template = strcat(template, 'd] = %5.3f\t');

    for i = 1:row

        for j = 1:col
            index = TwoToOne(i, j, row);

            if (index <= len)
                str = strcat(str, sprintf(template, index, arr(index)));

            end

        end

        disp(str);
        str = '';
    end

end

function index = TwoToOne(i, j, columns)
    index = 1 + (i - 1) + ((j - 1) * columns);
end
