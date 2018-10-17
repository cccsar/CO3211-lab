% condicionamiento

function c = condition(n)
    [A,x] = hilbert(n);
    c = cond(A,inf);
endfunction