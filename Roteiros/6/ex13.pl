/*E. 13 Primeiro, explique o que o seguinte programa faz:*/

%Verifica a que classe um número pertence: positivos,negativos ou zero.

classe(Numero,positivo):- Numero > 0.
classe(0,zero).
classe(Numero,negativo):- Numero < 0.


/*Depois, melhore-o pela adição de cortes.*/

classe(0,zero):-!.
classe(Numero,positivo):- Numero > 0,!. 			      
classe(_Numero,negativo).  
