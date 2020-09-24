function output = task6_1()
    global A

    indexes_pos = A > 0;
    indexes_neg = A < 0;

    output = [A(indexes_pos) A(indexes_neg)];
end
