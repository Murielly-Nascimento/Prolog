/*Ex. 24 Crie um predicado narranjos(M,P,N) que calcule o número total N de arranjos simples possı́veis em
uma lista com M elementos, tomados P a P. Use este predicado para calcular o número de diferentes
arranjos para os dois exercı́cios anteriores e verifique se todos eles foram gerados.*/

fatorial(1,Acumulador,Acumulador).
fatorial(M,Acumulador,Resultado):-
	NovoM is M-1,
	NovoAcc is Acumulador*NovoM,
	fatorial(NovoM,NovoAcc,Resultado). 
		
	
narranjos(M,P,Resultado):-
	fatorial(M,M,X),
	Pfat is M-P,
	fatorial(Pfat,Pfat,Y),
	Resultado is X/Y.


		
