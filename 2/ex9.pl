/*Ex. 9 Escreva um predicado duasVezes(Ent,Sai) cujo argumento Ent é
uma lista e cujo argumento Sai é uma lista consistindo de todos os
elementos da primeira lista escritos duas vezes.*/



duasVezes([],[]).
duasVezes([X|Xs],[X,X|Ys]):-
	duasVezes(Xs,Ys).
	
