/*Ex. 4 Escreva um programa para sem_repeticao(L1,L2), com L2 sendo o resultado da remoção
de todos os elementos repetidos de L1.*/

membro(X,[X|_]).
membro(X,[_|T]):-
	membro(X,T).
    
sem_repeticao([],[]).
sem_repeticao([H | T], Lista) :-    
     membro(H, T),
     sem_repeticao(T, Lista).

sem_repeticao([H | T], [H | T1]) :- 
      sem_repeticao(T, T1).

	
	
	

	
	
	
