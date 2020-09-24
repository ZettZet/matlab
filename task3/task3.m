function ret_val = task3()
    arr = readmatrix('task3.txt');

    disp([arr; (1:length(arr))]);

    indexes = find(arr < 5);

    if length(indexes) >= 5
        ret_val = sum(arr(indexes(end - 5 + 1:end)));
    else
        ret_val = sum(arr(indexes));
    end

end
