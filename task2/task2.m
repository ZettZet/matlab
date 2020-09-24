function S = task2()
    x = input('x is ');

    local_s = 0;
    every_four = 3;
    local_x = x;
    fact = 1;
    counter_index = 0;

    mult_by = sqrt(2 * x / pi);

    epsylon = 10^(- 5);
    temp = 1;

    table = [];

    while abs(temp) > epsylon
        temp = (local_x) / (every_four * fact);
        counter_index = counter_index + 1;

        local_s = local_s + temp;

        table = [table; counter_index (mult_by * temp) (mult_by * local_s)];

        local_x = local_x * (-x) * x;
        every_four = every_four + 4;
        fact = fact * (2 * counter_index) * (2 * counter_index + 1);
    end

    table = array2table(table, 'VariableNames', {'counter', 'memember', 'sum'});
    writetable(table, 'task2.csv');
    S = mult_by * local_s;
end
