/*Ex. 5 Projete um predicado segmento(S,L) que testa se o seu primeiro argumento é um segmento
contı́nuo contido em qualquer parte da lista L.*/

conc([], L, L).
conc([X | L1], L2, [X | L3]) :-
	conc(L1, L2, L3).

prefixo(P,L):-
    conc(P,_,L).

sufixo(S,L):-
    conc(_,S,L).

segmento(S,L):-
    sufixo(Y,L),
    prefixo(S,Y).
