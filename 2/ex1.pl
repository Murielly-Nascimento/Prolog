/*Ex. 1 Considere a seguinte situação:

	Um objeto A está sobre uma mesa.
	Um objeto B está sobre o objeto A.
	
(a) Instrua o interpretador de Prolog sobre esta situação, usando para isto o predicado sobre.

RESPOSTA:

	objeto('A').
	objeto('B').
	
	sobre('A',mesa).
	sobre('B','A'). 


(b) Expresse por meio de fórmulas lógicas (e em seguida na notação
do Prolog) a seguinte regra de conhecimento:

	Se um objeto está sobre outro,
	entao este objeto está acima do outro.
	
	O predicado acima_de é transitivo.
	
RESPOSTA:

	A = Um objeto está sobre outro.
	C = Um objeto está acima de outro.
	
	A -> C.

	acima_de(X,Y):- sobre(X,Y).
	acima_de(X,Y):-sobre(X,Z),acima_de(Z,Y).	
	
	
(c) Coloque a seguinte questão ao interpretador Prolog: “B está
acima da mesa?”.

RESPOSTA:

	?-acima_de('B',mesa).
	true
*/
