/*E. 8 Usando o predicado subconjunto que acabou de escrever, e findall, escreva um predi-
cado conj_potencia-2 que recebe um conjunto como seu primeiro argumento e retorna
o conjunto potência deste conjunto como o segundo argumento. O conjunto potência de
um conjunto é o conjunto de todos os seus subconjuntos.*/

conc([],L,L).
conc([X | L1], L2, [X | L3]) :-
	conc(L1, L2, L3).

prefixo(P,L):-
    conc(P,_,L).

sufixo(S,L):-
    conc(_,S,L).

segmento(S,L):-
    sufixo(Y,L),
    prefixo(S,Y).

conj_potência(Conjunto,Lista):-
    setof(S,segmento(S,Conjunto),Lista).
