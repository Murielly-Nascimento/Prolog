/*(d) diferença(L,K,M) é verdadeiro se, e somente se, M é a diferença entre L e K.*/

membro([],[]).
membro(X,[X|_]).
membro(X,[_|T]):-
	membro(X,T).

diferenca(_,_,[]).
diferenca(Lista1,Lista2,[H|T]):-
	membro(H,Lista1),
	not(membro(H,Lista2)),
	diferenca(Lista1,Lista2,T).
