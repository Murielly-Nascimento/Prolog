/*E. 3 Defina um predicado nu-2 (“não unificável”) que recebe dois termos como argumentos e
sucede se os dois termos não unificam.Você deve definir este predicado de três formas diferentes:

a) Primeiro (e mais fácil), escreva-o com a ajuda de = e \+.
b) Segundo, escreva-o com a ajuda de =, mas não use \+.
c) Terceiro, escreva usando uma combinação de corte e fail. Não use = e \+.*/

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



