/*Ex. 17 Use o predicado remove-3, definido no exercı́cio anterior, para implementar o predicado insere(X,L,L1)
que insere um elemento Xem alguma posição da lista L, resultando na lista L1.*/

remove(X, [X | Xs], Xs).
remove(X, [Y | Ys], [Y | Z]) :-
	remove(X, Ys, Z).

insere(X, L, L1) :-
	remove(X, L1, L).
