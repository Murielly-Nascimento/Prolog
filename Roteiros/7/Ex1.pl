/*E. 1 Faça experimentações com as três versões do predicado max-3 definidas na aula teórica: a
versão sem corte, a versão com corte verde e a versão com corte vermelho. Como usual,
“experimentar” significa “executar o trace”, assegurando-se que rastreie consultas na qual
todos os três argumentos estão instanciados para inteiros e, também, consultas onde o
terceiro argumento é uma variável.*/

/*
VERSÃO SEM CORTES.

max(X,Y,Y):- X =< Y.
max(X,Y,X):- X > Y.

[trace]  ?- max(2,3,X).
   Call: (10) max(2, 3, _7940) ? creep
   Call: (11) 2=<3 ? creep
   Exit: (11) 2=<3 ? creep
   Exit: (10) max(2, 3, 3) ? creep
X = 3 ;
   Redo: (10) max(2, 3, _7940) ? creep
   Call: (11) 2>3 ? creep
   Fail: (11) 2>3 ? creep
   Fail: (10) max(2, 3, _7940) ? creep
false.

[trace]  ?- max(200,300,200).
   Call: (10) max(200, 300, 200) ? creep
   Call: (11) 200>300 ? creep
   Fail: (11) 200>300 ? creep
   Fail: (10) max(200, 300, 200) ? creep
false.

VERSÃO COM CORTES

max(X,Y,Y):- X =< Y,!.
max(X,_,X).

[trace]  ?- max(2,3,X).
   Call: (10) max(2, 3, _7940) ? creep
   Call: (11) 2=<3 ? creep
   Exit: (11) 2=<3 ? creep
   Exit: (10) max(2, 3, 3) ? creep
X = 3.

[trace]  ?- max(200,300,200).
   Call: (10) max(200, 300, 200) ? creep
   Exit: (10) max(200, 300, 200) ? creep
true.

VERSÃO REVISADA COM CORTES

max(X,Y,Z):- X =< Y,!,Z=Y. 
max(X,_Y,X).

[trace]  ?- max(2,3,X).
   Call: (10) max(2, 3, _11538) ? creep
   Call: (11) 2=<3 ? creep
   Exit: (11) 2=<3 ? creep
   Call: (11) _11538=3 ? creep
   Exit: (11) 3=3 ? creep
   Exit: (10) max(2, 3, 3) ? creep
X = 3.

[trace]  ?- max(200,300,200).
   Call: (10) max(200, 300, 200) ? creep
   Call: (11) 200=<300 ? creep
   Exit: (11) 200=<300 ? creep
   Call: (11) 200=300 ? creep
   Fail: (11) 200=300 ? creep
   Fail: (10) max(200, 300, 200) ? creep
false.
*/
