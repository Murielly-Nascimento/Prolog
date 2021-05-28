/*Ex. 14 Em matemática, um vetor n-dimensional é uma lista de tamanho n de números. Por exemplo, [2, 5, 12]
é um vetor tridimensional e [45, 27, 3, −4, 6] é um vetor 5-dimensional. Ouma das operações básicas
sobre vetores é multiplicação escalar. Nesta operação, todos os elementos de um vetor são multiplicados
por um número. Escreva um predicado multiEsc-3 cujo primeiro argumento é um inteiro, o segundo
é uma lista de inteiros e o terceiro é o resultado da multiplicação escalar do segundo argumento pelo
primeiro.*/

multiEsc(_X,[],[]).
multiEsc(X,[Y|Ys],[Z|Zs]):-
	Z is X*Y,
	multiEsc(X,Ys,Zs). 
