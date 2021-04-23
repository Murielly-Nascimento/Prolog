/*
VERSÃO 1

nu(A,B):-
	\+A=B.

VERSÃO 2

nu(A,B):-
	A\=B.

VERSÃO 3

iguais(A,A).
diferente(_A,_B).

nu(A,B):-iguais(A,B),!,fail.
nu(A,B):-diferente(A,B).

*/



