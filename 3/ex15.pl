/*Ex. 15 Uma outra operação fundamental sobre vetores é o produto escalar. Esta operação combina dois
vetores de mesma dimensão e produz um número como resultado. Por exemplo, o produto escalar
de [2,5,6] com [3,4,1] é 2*3 + 5*4 + 6*1, ou seja, 32. Escreva um predicado prodEsc-3 cujo
primeiro argumento é uma lista de inteiros, o segundo argumento é uma lista de inteiros com o mesmo
comprimento que a primeira e o terceiro argumento é o produto escalar do primeiro argumento pelo
segundo.*/


prod([],[],Acumulador,Acumulador).
prod([X|Xs],[Y|Ys],Acumulador,Resultado):-
	W is X*Y,
	NovoAcc is Acumulador + W,
	prod(Xs,Ys,NovoAcc,Resultado). 
	
prodEsc([X|Xs],[Y|Ys],Resultado):-prod([X|Xs],[Y|Ys],0,Resultado).

