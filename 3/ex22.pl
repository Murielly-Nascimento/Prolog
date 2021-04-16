/*Ex. 22 Use a ideia acima e, inspirado pela definição do predicado permutacao-2, crie um predicado arranjo(N,L,A)
que é verdadeiro quando A é um arranjo simples com N elementos da lista L.*/


remove(X, [X | Xs], Xs).
remove(X, [Y | Ys], [Y | Z]) :-
	remove(X, Ys, Z).

arranjo(0,_,[]).
arranjo(N,Xs,[Y|Zs]):-
	N>0,
	N1 is N - 1,
	remove(Y,Xs,Ys),
	arranjo(N1,Ys,Zs).


	
