/*Ex. 4 Finalmente, escreva um predicado intercala3 que recebe três listas como argumentos e intercala os
elementos da duas primeiras listas gerando uma terceira.*/

intercala3([],[],[]).
intercala3([X|Xs],[Y|Ys],[junta(X,Y)|Zs]):-
	intercala3(Xs,Ys,Zs).
