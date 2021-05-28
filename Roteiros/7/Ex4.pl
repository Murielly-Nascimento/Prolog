/*E. 4 Defina um predicado unificável(Lista1,Termo,Lista2) onde Lista2 é a lista de todos
os membros da Lista1 que poderiam se unificar com Termo, mas não são instanciados
pela unificação.*/

unificável([],_,[]).
unificável([H|L1],Termo,[H|L2]):-
	\+(\+H=Termo),!,
	unificável(L1,Termo,L2).
unificável([_|L1],Termo,L2):-
	unificável(L1,Termo,L2).	
