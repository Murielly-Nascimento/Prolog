/*Ex. 2 Escreva um predicado intercala1 que recebe três listas como argumentos e intercala os elementos da
duas primeiras listas gerando uma terceira.*/


intercala1([],[],[]).
intercala1([X|Xs],[Y|Ys],[X,Y|Zs]):-
	intercala1(Xs,Ys,Zs).
