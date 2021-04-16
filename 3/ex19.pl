/*Ex. 19 Crie um predicado npermutacoes(M,N) que calcule o número total N de permutações possı́veis em
uma lista com M elementos. Use este predicado para calcular o número de diferentes permutações para
os dois exercı́cios anteriores e verifique se todas elas foram geradas.*/
	
fatorial(1,Acumulador,Acumulador).
fatorial(M,Acumulador,Resultado):-
	NovoM is M-1,
	NovoAcc is Acumulador*NovoM,
	fatorial(NovoM,NovoAcc,Resultado). 
		
	
npermutacao(M,Resultado):-fatorial(M,M,Resultado).
