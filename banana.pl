in_room(monkey). 
in_room(chair). 
in_room(banana). 
can_move(monkey, chair). 
can_climb(monkey, chair). 
banana_hanging_from_ceiling. 
chair_under_banana. 
can_reach_banana :- 
    in_room(monkey), 
    in_room(chair), 
    in_room(banana), 
    can_move(monkey, chair), 
    chair_under_banana, 
    can_climb(monkey, chair), 
    banana_hanging_from_ceiling.