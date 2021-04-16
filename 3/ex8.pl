/*Ex. 8 Um palı́ndromo é uma palavra ou frase que tenha a propriedade de poder ser lida tanto da direita
para a esquerda quanto da esquerda para a direita da mesma forma. Por exemplo, “rodador”, “ama”
e “anilina” são palı́ndromos. Escreva um predicado palindromo(Lista) que verifica se Lista é um
palı́ndromo.*/

%Foi a primeira solução que desenvolvi antes de ter a aula 6.

inverter(X, Y) :-
	aux([], X, Y).	
aux(L, [], L).
aux(L, [X | Y], Z) :-
	aux([X | L], Y, Z).
	
membro([],[]).
membro(X,[X|_]).
	
conjunto([],[]).
conjunto([X|Xs],[Y|Ys]):-
	membro(X,[Y|Ys]),
	conjunto(Xs,Ys).

palindromo(Lista):-
	inverter(Lista,Y),
	conjunto(Lista,Y).
	
/*OU resposta dada durante a aula:

palindromo([_]).
palindromo([H|L]):-
	concatena(Pre,[H],L),
	palindromo(Pre).

*/
	
