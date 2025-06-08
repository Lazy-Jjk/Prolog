start :-
   write('enter your symptom 1: '), read(S1), 
   write('enter  your symptom 2: '), read(S2),
   write('enter your symptom 3: '), read(S3),
   diagnose(S1, S2, S3).
diagnose(fever, cold, cough) :-
    write('you may have viral fever').
diagnose(chest_pain, confusion, none) :-
    write('you may have heart attack').
diagnose(hunger, dizziness, none) :-
    write('you may have sugar').
diagnose(_, _, _) :-
    write('no available diseases').
