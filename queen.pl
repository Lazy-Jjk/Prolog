
safe([]).
safe([Queen|Others]) :-
    safe(Others),
    no_attack(Queen, Others, 1).


no_attack(_, [], _).
no_attack(Y, [Y1|Ylist], Xdist) :-
    Y =\= Y1,
    abs(Y - Y1) =\= Xdist,
    Dist1 is Xdist + 1,
    no_attack(Y, Ylist, Dist1).


queens(N, Queens) :-
    range(1, N, Range),
    permutation(Range, Queens),
    safe(Queens).


range(M, M, [M]).
range(M, N, [M|Rest]) :-
    M < N,
    M1 is M + 1,
    range(M1, N, Rest).
