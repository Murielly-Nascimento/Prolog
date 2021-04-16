/*Ex. 5 Escreva um predicado subconjunto-2 que recebe duas listas (de constantes) como argumentos e
verifica se a primeira lista é um subconjunto da segunda.*/

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

