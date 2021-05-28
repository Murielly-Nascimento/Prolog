/*Ex. 21 Crie um predicado ncombinacoes(M,P,N) que calcule o número total N de combinações simples
possı́veis em uma lista com M elementos, tomados P a P. Use este predicado para calcular o número de
diferentes combinações para os dois exercı́cios anteriores e verifique se todas elas foram geradas.*/

fatorial(1,Acumulador,Acumulador).
fatorial(M,Acumulador,Resultado):-
	NovoM is M-1,
	NovoAcc is Acumulador*NovoM,
	fatorial(NovoM,NovoAcc,Resultado). 
		
	
ncombinacao(M,P,Resultado):-
	fatorial(M,M,X),
	Pfat is M-P,
	fatorial(Pfat,Pfat,Y),
	fatorial(P,P,Z),
	W is Y*Z,
	Resultado is X/W.
	
		
