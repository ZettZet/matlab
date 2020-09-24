function ret_val = greater(x)
    ret_val = (1 + x) / (1 + nthroot(1 + exp(-0.2 * x), 3));
end
