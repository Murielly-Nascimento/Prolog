/*E. 14 Sem usar corte, escreva um predicado divide-3 que divide uma lista de inteiros em duas listas:
uma contendo os números positivos e zero, e uma outra contendo números negativos. Por
exemplo:*/

/*
classe(0,zero).
classe(Numero,positivo):- Numero > 0. 			      
classe(Numero,negativo):- Numero < 0.  

divide([],[],[]).
divide([H | T],P,[H | N]):-
	classe(H,negativo),
	divide(T,P,N).
	
divide([H | T],[H | P],N):-
	divide(T,P,N).
*/
	
/*Agora, usando o corte, melhore este programa, sem alterar seu significado.*/


classe(0,zero).
classe(Numero,positivo):- Numero > 0. 			      
classe(Numero,negativo):- Numero < 0.  

divide([],[],[]).
divide([H | T],P,[H | N]):-
	classe(H,negativo),!,
	divide(T,P,N).
	
divide([H | T],[H | P],N):-
	divide(T,P,N).
