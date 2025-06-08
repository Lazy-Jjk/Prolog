max_a(4). max_b(3).  
start(state(0,0)).   
goal(state(2,_)).  
solve :-  start(Start), dfs(Start, [Start], Path), print_path(Path).  
  
dfs(State, Path, Path) :- goal(State).  
  
dfs(State, Visited, Path) :- move(State, Next),  \+ member(Next, Visited), dfs(Next, [Next|Visited], Path).  
move(state(A,B), state(4,B)) :-  
A < 4.  
move(state(A,B), state(A,3)) :-  
B < 3.  
move(state(A,B), 
state(0,B)) :-  
A > 0.  
move(state(A,B), 
state(A,0)) :-  
B > 0.  
move(state(A,B), state(NewA,NewB)) :-  
A > 0, B < 3,  
    Space is 3 - B,  
    Transfer is min(A, Space),  
    NewA is A - Transfer,  
    NewB is B + Transfer.  
move(state(A,B), state(NewA,NewB)) :-  
B > 0, A < 4,  
    Space is 4 - A,  
    Transfer is min(B, Space),  
    NewA is A + Transfer,  
    NewB is B - Transfer.  
print_path([]). 
print_path([H|T]) :- print_path(T), write(H), nl.