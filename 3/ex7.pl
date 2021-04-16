/*Ex. 7 Chamaremos uma lista de duplicada se ela é formada de dois blocos consecutivos de elementos que
são exatamente os mesmos. Por exemplo, [a,b,c,a,b,c] é duplicada, pois ela é formada de [a,b,c]
5seguida por [a,b,c]. Também é duplicada a lista[fu,ba,fu,ba]. Por outro lado, a lista [fu,ba,fu]
não é duplicada. Escreva um predicado duplicada(Lista) que é verdadeiro quando Lista é uma
lista duplicada.*/

conc([], L, L).
conc([X | L1], L2, [X | L3]) :-
	conc(L1, L2, L3).
	
membro([],[]).
membro(X,[X|_]).
	
conjunto([],[]).
conjunto([X|Xs],[Y|Ys]):-
	membro(X,[Y|Ys]),
	conjunto(Xs,Ys).


duplicada([X|Xs]):-
	conc(L1,L2,[X|Xs]),
	conjunto(L1,L2).
		
