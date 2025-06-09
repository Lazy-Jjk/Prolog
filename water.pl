start(state(0, 0)).
goal(state(2, _)).

operation(state(_, B), state(4, B), fill_a).
operation(state(A, _), state(A, 3), fill_b).
operation(state(_, B), state(0, B), empty_a).
operation(state(A, _), state(A, 0), empty_b).

operation(state(A, B), state(NewA, NewB), pour_a_to_b) :-
    T is min(A, 3 - B),
    T > 0,
    NewA is A - T,
    NewB is B + T.

operation(state(A, B), state(NewA, NewB), pour_b_to_a) :-
    T is min(B, 4 - A),
    T > 0,
    NewA is A + T,
    NewB is B - T.

run_steps(State, _) :-
    goal(State),
    writeln(State),
    writeln('Goal reached!'),
    !.

run_steps(State, History) :-
    operation(State, Next, Action),
    \+ member(Next, History),
    format('~w -> ~w via ~w~n', [State, Next, Action]),
    run_steps(Next, [Next | History]).

solve_direct :-
    start(Initial),
    run_steps(Initial, [Initial]).