% Define symmetric distances explicitly
distance(a, b, 10).
distance(b, a, 10).
distance(b, c, 20).
distance(c, b, 20).
distance(c, a, 15).
distance(a, c, 15).

% Permutation logic
perm([], []).
perm(L, [H|T]) :- select(H, L, R), perm(R, T).

% TSP: make a round trip
tsp([Start|Rest], Path, Cost) :-
    perm(Rest, Perm),
    append([Start|Perm], [Start], Path),
    path_cost(Path, Cost).

% Cost calculation
path_cost([_], 0).
path_cost([A, B | T], Cost) :-
    distance(A, B, D),
    path_cost([B | T], RestCost),
    Cost is D + RestCost.
