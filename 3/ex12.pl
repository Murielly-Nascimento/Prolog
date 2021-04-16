/*Ex. 12 Escreva um predicado somaUm-2 cujo primeiro argumento é uma lista de inteiros e cujo segundo
argumento é a lista dos inteiros obtidas somando-se 1 a cada inteiro na primeira lista.*/

somaUm([],[]).
somaUm([X|Xs],[Y|Ys]):-
	Y is X+1,
	somaUm(Xs,Ys).
