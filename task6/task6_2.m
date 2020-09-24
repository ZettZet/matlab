function output = task6_2(arr)
    indexes_pos = arr > 0;
    indexes_neg = arr < 0;

    output = [arr(indexes_pos) arr(indexes_neg)];
end
