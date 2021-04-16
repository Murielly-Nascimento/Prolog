/*Ex. 3 Agora escreva um predicado intercala2 que recebe três listas como argumentos e intercala os ele-
mentos da duas primeiras listas gerando uma terceira*/

intercala2([],[],[]).
intercala2([X|Xs],[Y|Ys],[[X,Y]|Zs]):-
	intercala2(Xs,Ys,Zs).
