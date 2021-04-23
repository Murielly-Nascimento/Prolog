unificável([],_,[]).
unificável([H|L1],Termo,[H|L2]):-
	\+(\+H=Termo),!,
	unificável(L1,Termo,L2).
unificável([_|L1],Termo,L2):-
	unificável(L1,Termo,L2).	