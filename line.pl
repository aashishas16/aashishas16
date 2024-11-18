% Rule for a horizontal line segment
horizontal((X1, Y1), (X2, Y2)) :-
    Y1 =:= Y2. % True if Y-coordinates are equal

% Rule for a vertical line segment
vertical((X1, Y1), (X2, Y2)) :-
    X1 =:= X2. % True if X-coordinates are equal

