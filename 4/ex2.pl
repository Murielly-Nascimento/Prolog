/*Ex. 2 Escreva um predicado soma_até(N,S) que calcule a soma de todos os números entre 1 e N.*/

soma_até(0,Acc,Acc).
soma_até(N,Acc,S):-
	NovoAcc is Acc + N,
	NovoN is N-1,
	soma_até(NovoN,NovoAcc,S).
	
soma_até(N,S):-soma_até(N,0,S).
