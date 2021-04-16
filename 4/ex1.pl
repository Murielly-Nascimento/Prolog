/*Ex. 1 Defina um predicado soma_acum(L,K) que, dado uma lista L de inteiros, retorna uma lista K
na qual cada elemento é a soma de todos os elementos em L até a mesma posição.*/

soma_acum([],_,[]).
soma_acum([H|T],Acc,[Y|Ys]):-
	NovoAcc is Acc + H,
	Y is NovoAcc,
	soma_acum(T,NovoAcc,Ys).
	
soma_acum(L,K):-soma_acum(L,0,K).
