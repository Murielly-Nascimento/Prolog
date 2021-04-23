membro(X,[X|_]).
membro(X,[_|T]):-
	membro(X,T).

subconjunto([],_L2).
subconjunto([H|L1],L2):-
    membro(H,L2),
    subconjunto(L1,L2).

/*Observações:
	1 - Para o predicado subconjunto temos que independente da ordem, os elementos da Lista1 devem fazer parte da Lista2.
	2 - Dessa forma uso membro para verificar se a cabeça de L1 é membro de L2 e se a sua cauda também o é.
	
*/

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

/*Observações:
	1 - Essa solução, chamada segmento, verifica se uma lista é segmento de outra. Nesse caso a ordem dos elementos importa.
	2 - Para isso usamos os predicados concatena, sufixo e prefixo.
*/

/*Conclusão: Coloquei essas duas soluções devido a seguinte consulta:

	? - subconjunto (S,[a,b,c]).

	Usando o predicado subconjunto temos uma infinidade de subconjunto repetidos. (Ex: [a],[a,a],[a,a,a]).
	Enquanto que para segmento temos : [], [a], [a, b], [a, b, c], [b], [b, c], [c].
*/