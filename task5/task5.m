function task5(a, b)
    A = readmatrix('task5.txt');

    to_replace = sum(A(A > b | A < a));

    B = A;

    B(B > a & B < b) = to_replace;

    write_task(A, B)
end

function write_task(A, B)
    file = 'task5_SOLVED.txt';

    fid = fopen(file, 'wt');
    fprintf(fid, 'ORIGIN MATRIX\n');
    fclose(fid);
    writematrix(A, file, 'WriteMode', 'append');

    fid = fopen(file, 'at');
    fprintf(fid, '\nTRANSFORMED MATRIX\n');
    fclose(fid);
    writematrix(B, file, 'WriteMode', 'append');

end
