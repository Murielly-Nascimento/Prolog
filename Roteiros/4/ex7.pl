/*Ex. 7 Escreva um predicado romano(N,R) que recebe um número natural positivo N e devolve uma
lista R representando o número recebido em numeração romana.*/

romano(0, []).
romano(N, ['I'|T]) :- 
	N < 4, 
	M is N - 1, 
	romano(M, T).
	
romano(4, ['IV']).
romano(5, ['V']).

romano(N, ['V'|T]) :- 
	N < 9, 
	M is N - 5, 
	romano(M, T).
	
romano(9, ['IX']).

romano(N, ['X'|T]) :- 
	N < 40, 
	M is N - 10, 
	romano(M, T).
	
romano(N, ['XL'|T]) :- 
	N < 50, 
	M is N - 40, 
	romano(M, T).
	
romano(N, ['L'|T]) :- 
	N < 90, 
	M is N - 50, 
	romano(M, T).
	
romano(N, ['XC'|T]) :- 
	N < 100, 
	M is N - 90, 
	romano(M, T).
	
romano(N, ['C'|T]) :- 
	N < 400, 
	M is N - 100, 
	romano(M, T).
	
romano(400,['CD']).

romano(500,['D']).
	
romano(N, ['D'|T]) :- 
	N < 900, 
	M is N - 500, 
	romano(M, T).

romano(900,['CM']).
	
romano(N, ['M'|T]) :- 
	N < 4000, 
	M is N - 1000, 
	romano(M, T).
	
	
	
	
	
	
	
	
	
	
	





