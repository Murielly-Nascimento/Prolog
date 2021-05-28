/*E. 11 Defina um operador infixo <- e um predicado adequado para este operador funcionar com ex-
pressões horárias, tais como as que definiu nos dois exercı́cios anteriores, da mesma forma que o
operador is funciona para aritmética. Ou seja, ele deve avaliar expressões horárias. O segundo
argumento do operador (à direita) deveria ser um expressão horária usando h, ++ e **. O ope-
rador <- deveria avaliar a expressão horária à direita dele e unificar o horário resultante com o
argumento do lado esquerdo.*/

:-op(300,xfx,h).
:-op(310,xfx,**).
:-op(350,xfx,++).
:-op(955,xfx,<-).

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

Resultado <- H1 h Min1 ++ H2 h Min2 :- 
    soma_hora(H1 h Min1, H2 h Min2, Resultado).

Resultado <- K ** H h Min :- 
    mult_hora(K, H h Min, Resultado).

Resultado <- K ** H1 h Min1 ++ Q ** H2 h Min2 :- 
    	mult_hora(K, H1 h Min1, HR1 h MinR1),
 	mult_hora(Q, H2 h Min2, HR2 h MinR2),
    	soma_hora(HR1 h MinR1, HR2 h MinR2, Resultado).
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
