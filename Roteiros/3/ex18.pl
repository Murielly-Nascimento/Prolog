/*Ex. 18 Crie consultas para responder às seguintes perguntas:

(a) Quais os anagramas da palavra amor?

RESPOSTA:  

?- permutacao([a,m,o,r],X).
X = [a, m, o, r] ;
X = [a, m, r, o] ;
X = [a, o, m, r] ;
X = [a, o, r, m] ;
X = [a, r, m, o] ;
X = [a, r, o, m] ;
X = [m, a, o, r] ;
X = [m, a, r, o] ;
X = [m, o, a, r] ;
X = [m, o, r, a] ;
X = [m, r, a, o] ;
X = [m, r, o, a] ;
X = [o, a, m, r] ;
X = [o, a, r, m] ;
X = [o, m, a, r] ;
X = [o, m, r, a] ;
X = [o, r, a, m] ;
X = [o, r, m, a] ;
X = [r, a, m, o] ;
X = [r, a, o, m] ;
X = [r, m, a, o] ;
X = [r, m, o, a] ;
X = [r, o, a, m] ;
X = [r, o, m, a] ;
false.


(b) Carlos e Rose têm três filhos: Sérgio, Adriano e Fabı́ola. Eles querem tirar uma foto de recordação
na qual todos apareçam lado a lado. Quais são as diferentes fotos que poderão ser registradas?

?- permutacao([Sergio,Adriana,Fabiola,Carlos,Rose],X).
X = [Sergio, Adriana, Fabiola, Carlos, Rose] ;
X = [Sergio, Adriana, Fabiola, Rose, Carlos] ;
X = [Sergio, Adriana, Carlos, Fabiola, Rose] ;
X = [Sergio, Adriana, Carlos, Rose, Fabiola] ;
X = [Sergio, Adriana, Rose, Fabiola, Carlos] ;
X = [Sergio, Adriana, Rose, Carlos, Fabiola] ;
X = [Sergio, Fabiola, Adriana, Carlos, Rose] ;
X = [Sergio, Fabiola, Adriana, Rose, Carlos] ;
X = [Sergio, Fabiola, Carlos, Adriana, Rose] ;
X = [Sergio, Fabiola, Carlos, Rose, Adriana] ;
X = [Sergio, Fabiola, Rose, Adriana, Carlos] ;
X = [Sergio, Fabiola, Rose, Carlos, Adriana] ;
X = [Sergio, Carlos, Adriana, Fabiola, Rose] ;
X = [Sergio, Carlos, Adriana, Rose, Fabiola] ;
X = [Sergio, Carlos, Fabiola, Adriana, Rose] ;
X = [Sergio, Carlos, Fabiola, Rose, Adriana] ;
X = [Sergio, Carlos, Rose, Adriana, Fabiola] ;
X = [Sergio, Carlos, Rose, Fabiola, Adriana] ;
X = [Sergio, Rose, Adriana, Fabiola, Carlos] ;
X = [Sergio, Rose, Adriana, Carlos, Fabiola] ;
X = [Sergio, Rose, Fabiola, Adriana, Carlos] ;
X = [Sergio, Rose, Fabiola, Carlos, Adriana] ;
X = [Sergio, Rose, Carlos, Adriana, Fabiola] ;
X = [Sergio, Rose, Carlos, Fabiola, Adriana] ;
X = [Adriana, Sergio, Fabiola, Carlos, Rose] ;
X = [Adriana, Sergio, Fabiola, Rose, Carlos] ;
X = [Adriana, Sergio, Carlos, Fabiola, Rose] ;
X = [Adriana, Sergio, Carlos, Rose, Fabiola] ;
X = [Adriana, Sergio, Rose, Fabiola, Carlos] ;
X = [Adriana, Sergio, Rose, Carlos, Fabiola] ;
X = [Adriana, Fabiola, Sergio, Carlos, Rose] ;
X = [Adriana, Fabiola, Sergio, Rose, Carlos] ;
X = [Adriana, Fabiola, Carlos, Sergio, Rose] ;
X = [Adriana, Fabiola, Carlos, Rose, Sergio] ;
X = [Adriana, Fabiola, Rose, Sergio, Carlos] ;
X = [Adriana, Fabiola, Rose, Carlos, Sergio] ;
X = [Adriana, Carlos, Sergio, Fabiola, Rose] ;
X = [Adriana, Carlos, Sergio, Rose, Fabiola] ;
X = [Adriana, Carlos, Fabiola, Sergio, Rose] ;
X = [Adriana, Carlos, Fabiola, Rose, Sergio] ;
X = [Adriana, Carlos, Rose, Sergio, Fabiola] ;
X = [Adriana, Carlos, Rose, Fabiola, Sergio] ;
X = [Adriana, Rose, Sergio, Fabiola, Carlos] ;
X = [Adriana, Rose, Sergio, Carlos, Fabiola] ;
X = [Adriana, Rose, Fabiola, Sergio, Carlos] ;
X = [Adriana, Rose, Fabiola, Carlos, Sergio] ;
X = [Adriana, Rose, Carlos, Sergio, Fabiola] ;
X = [Adriana, Rose, Carlos, Fabiola, Sergio] ;
X = [Fabiola, Sergio, Adriana, Carlos, Rose] ;
X = [Fabiola, Sergio, Adriana, Rose, Carlos] ;
X = [Fabiola, Sergio, Carlos, Adriana, Rose] ;
X = [Fabiola, Sergio, Carlos, Rose, Adriana] ;
X = [Fabiola, Sergio, Rose, Adriana, Carlos] ;
X = [Fabiola, Sergio, Rose, Carlos, Adriana] ;
X = [Fabiola, Adriana, Sergio, Carlos, Rose] ;
X = [Fabiola, Adriana, Sergio, Rose, Carlos] ;
X = [Fabiola, Adriana, Carlos, Sergio, Rose] ;
X = [Fabiola, Adriana, Carlos, Rose, Sergio] ;
X = [Fabiola, Adriana, Rose, Sergio, Carlos] ;
X = [Fabiola, Adriana, Rose, Carlos, Sergio] ;
X = [Fabiola, Carlos, Sergio, Adriana, Rose] ;
X = [Fabiola, Carlos, Sergio, Rose, Adriana] ;
X = [Fabiola, Carlos, Adriana, Sergio, Rose] ;
X = [Fabiola, Carlos, Adriana, Rose, Sergio] ;
X = [Fabiola, Carlos, Rose, Sergio, Adriana] ;
X = [Fabiola, Carlos, Rose, Adriana, Sergio] ;
X = [Fabiola, Rose, Sergio, Adriana, Carlos] ;
X = [Fabiola, Rose, Sergio, Carlos, Adriana] ;
X = [Fabiola, Rose, Adriana, Sergio, Carlos] ;
X = [Fabiola, Rose, Adriana, Carlos, Sergio] ;
X = [Fabiola, Rose, Carlos, Sergio, Adriana] ;
X = [Fabiola, Rose, Carlos, Adriana, Sergio] ;
X = [Carlos, Sergio, Adriana, Fabiola, Rose] ;
X = [Carlos, Sergio, Adriana, Rose, Fabiola] ;
X = [Carlos, Sergio, Fabiola, Adriana, Rose] ;
X = [Carlos, Sergio, Fabiola, Rose, Adriana] ;
X = [Carlos, Sergio, Rose, Adriana, Fabiola] ;
X = [Carlos, Sergio, Rose, Fabiola, Adriana] ;
X = [Carlos, Adriana, Sergio, Fabiola, Rose] ;
X = [Carlos, Adriana, Sergio, Rose, Fabiola] ;
X = [Carlos, Adriana, Fabiola, Sergio, Rose] ;
X = [Carlos, Adriana, Fabiola, Rose, Sergio] ;
X = [Carlos, Adriana, Rose, Sergio, Fabiola] ;
X = [Carlos, Adriana, Rose, Fabiola, Sergio] ;
X = [Carlos, Fabiola, Sergio, Adriana, Rose] ;
X = [Carlos, Fabiola, Sergio, Rose, Adriana] ;
X = [Carlos, Fabiola, Adriana, Sergio, Rose] ;
X = [Carlos, Fabiola, Adriana, Rose, Sergio] ;
X = [Carlos, Fabiola, Rose, Sergio, Adriana] ;
X = [Carlos, Fabiola, Rose, Adriana, Sergio] ;
X = [Carlos, Rose, Sergio, Adriana, Fabiola] ;
X = [Carlos, Rose, Sergio, Fabiola, Adriana] ;
X = [Carlos, Rose, Adriana, Sergio, Fabiola] ;
X = [Carlos, Rose, Adriana, Fabiola, Sergio] ;
X = [Carlos, Rose, Fabiola, Sergio, Adriana] ;
X = [Carlos, Rose, Fabiola, Adriana, Sergio] ;
X = [Rose, Sergio, Adriana, Fabiola, Carlos] ;
X = [Rose, Sergio, Adriana, Carlos, Fabiola] ;
X = [Rose, Sergio, Fabiola, Adriana, Carlos] ;
X = [Rose, Sergio, Fabiola, Carlos, Adriana] ;
X = [Rose, Sergio, Carlos, Adriana, Fabiola] ;
X = [Rose, Sergio, Carlos, Fabiola, Adriana] ;
X = [Rose, Adriana, Sergio, Fabiola, Carlos] ;
X = [Rose, Adriana, Sergio, Carlos, Fabiola] ;
X = [Rose, Adriana, Fabiola, Sergio, Carlos] ;
X = [Rose, Adriana, Fabiola, Carlos, Sergio] ;
X = [Rose, Adriana, Carlos, Sergio, Fabiola] ;
X = [Rose, Adriana, Carlos, Fabiola, Sergio] ;
X = [Rose, Fabiola, Sergio, Adriana, Carlos] ;
X = [Rose, Fabiola, Sergio, Carlos, Adriana] ;
X = [Rose, Fabiola, Adriana, Sergio, Carlos] ;
X = [Rose, Fabiola, Adriana, Carlos, Sergio] ;
X = [Rose, Fabiola, Carlos, Sergio, Adriana] ;
X = [Rose, Fabiola, Carlos, Adriana, Sergio] ;
X = [Rose, Carlos, Sergio, Adriana, Fabiola] ;
X = [Rose, Carlos, Sergio, Fabiola, Adriana] ;
X = [Rose, Carlos, Adriana, Sergio, Fabiola] ;
X = [Rose, Carlos, Adriana, Fabiola, Sergio] ;
X = [Rose, Carlos, Fabiola, Sergio, Adriana] ;
X = [Rose, Carlos, Fabiola, Adriana, Sergio] ;
false.

*/

remove(X, [X | Xs], Xs).
remove(X, [Y | Ys], [Y | Z]) :-
	remove(X, Ys, Z).

permutacao([],[]).
permutacao(Xs,[Y|Zs]):-
	remove(Y,Xs,Ys),
	permutacao(Ys,Zs).
	
	
	
	
	
	

