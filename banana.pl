move1(state(on_floor, at_door, no),
 move_to_window,
 state(on_floor, at_window, no)).

move2(state(on_floor, at_window, has_box),
 push_box,
 state(on_floor, under_banana, has_box)).

move3(state(on_floor, under_banana, has_box),
 climb_box,
 state(on_box, under_banana, has_box)).

move4(state(on_box, under_banana, has_box),
 grasp_banana,
 state(on_box, under_banana, has_banana)).
