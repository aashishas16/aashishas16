% Rule for resistors in series
series(X, Y, Z) :- Z is (X + Y).

% Rule for resistors in parallel
parallel(X, Y, Z) :- Z is ((X * Y) / (X + Y)).

% Example query for circuit in the image
solve(Z) :-
    parallel(10, 40, R23), % R2 and R3 in parallel
    series(R23, 12, R123), % R1 in series with R23
    parallel(R123, 30, Z). % R123 in parallel with R4