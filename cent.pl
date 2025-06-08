cent_to_fahr(C,F) :- F is C * 9 / 5 + 32.
below_freezing_point(C) :- C < 0.