/*(c) interseçao(L,K,M) é verdadeiro se, e somente se, M é a interseção de L e K.*/

membro([],[]).
membro(X,[X|_]).
membro(X,[_|T]):-
	membro(X,T).

intersecao(_,_,[]).
intersecao(Lista1,Lista2,[H|T]):-
	membro(H,Lista1),
	membro(H,Lista2),
	intersecao(Lista1,Lista2,T).
