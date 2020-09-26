function task5()
    global A;
    A = readmatrix('task5.txt');

    a = input('Left edge ');
    b = input('Right edge ');

    loops(a, b);
    inMatlab(a, b);

end

function loops(a, b)
    global A;

    sum_of = 0;

    [row, col] = size(A);

    for i = 1:row

        for j = 1:col

            if A(i, j) > b || A(i, j) < a
                sum_of = sum_of + A(i, j);
            end

        end

    end

    B = A;

    for i = 1:row

        for j = 1:col

            if B(i, j) < b && B(i, j) > a
                B(i, j) = sum_of;
            end

        end

    end

    write_task(A, B, 'loops');

end

function inMatlab(a, b)
    global A;

    to_replace = sum(A(A > b | A < a));
    B = A;
    B(B > a & B < b) = to_replace;
    write_task(A, B, 'MATLAB')
end

function write_task(A, B, solved_by)
    file = sprintf('task5_SOLVED_by_%s.txt', solved_by);

    fid = fopen(file, 'wt');
    fprintf(fid, 'ORIGIN MATRIX\n');
    fclose(fid);
    writematrix(A, file, 'WriteMode', 'append');

    fid = fopen(file, 'at');
    fprintf(fid, '\nTRANSFORMED MATRIX\n');
    fclose(fid);
    writematrix(B, file, 'WriteMode', 'append');

end
