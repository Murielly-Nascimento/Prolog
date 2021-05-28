/*Ex. 6 Escreva um predicado bissexto(A) que recebe um ano e é verdadeiro se ele for bissexto ou
falso em caso contrário.*/

bissexto(A):-
	A mod 100 =:=0,
	A mod 400 =:=0.

bissexto(A):-
	A mod 100 =\=0,
	A mod 4 =:= 0.
	
	
