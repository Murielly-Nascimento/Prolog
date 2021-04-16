/*E. 7 Escreva um predicado soma_hora-3 que recebe dois horários no formato indicado no exercı́cio
anterior e instancia o terceiro argumento com a soma dos dois horários juntos:*/

:-op(300, xfx, h).

_ h _.

soma_hora(H1 h Min1, H2 h Min2, Resultado):- 
	(   MinT is Min1 + Min2,
    	MinT > 60,
   	 	MinAux is MinT - 60,
    	HT is H1 + H2 + 1,
    	Resultado = HT h MinAux,!
    );( MinT is Min1 + Min2,  
    	MinT < 60,
    	HT is H1 + H2,
    	Resultado = HT h MinT,!
    ).
