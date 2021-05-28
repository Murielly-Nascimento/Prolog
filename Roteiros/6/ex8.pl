/*E. 8 Defina um predicado mult_hora-3 que recebe um número natural positivo, um horário e ins-
tancia o terceiro argumento com o resultado de multiplicar o horário pelo natural dado:*/

:-op(300, xfx, h).

_ h _.

mult_hora(K, H h Min, Resultado):- 
	(   MinT is Min * K,
    	MinT > 60,
   	 	MinAux is MinT mod 60,
        Haux is MinT div 60,
    	H1 is H * K,
    	HT is H1 + Haux,
    	Resultado = HT h MinAux,!
    );( MinT is Min * K,  
    	MinT < 60,
    	HT is H * K,
    	Resultado = HT h MinT,!
    ).
