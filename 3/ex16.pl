/*Ex. 16 Escreva um predicado remove(X,L,L1) que remove a primeira ocorrência do elemento X na lista L,
resultando na lista L1.*/

remove(X, [X | Xs], Xs).
remove(X, [Y | Ys], [Y | Z]) :-
	remove(X, Ys, Z).



