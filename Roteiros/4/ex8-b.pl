/*8-b) uniao(L,K,M) é verdadeiro se, e somente se, M é a união de L e K.*/

membro([],[]).
membro(X,[X|_]).
membro(X,[_|T]):-
	membro(X,T).

uniao(_,_,[]).
uniao(_,_,[]).
uniao(Lista1,Lista2,[H|T]):-
	(membro(H,Lista1);
	membro(H,Lista2)),
	uniao(Lista1,Lista2,T).
