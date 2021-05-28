/*Ex. 5 A linguagem formal aPar é muito simples: ela consiste em todas as strings contendo um
número par de as e nada mais. Note que a string vazia  pertence a aPar. Escreva uma
DCG que gere aPar.*/

s --> [].
s --> e,s,e.

e --> [a].

/*
?- s([a,a,a,a,a,a],[ ]).
true .

?- s([a,a],[ ]).
true .

?- s(X,[ ]).
X = [] ;
X = [a, a] ;
X = [a, a, a, a] ;
X = [a, a, a, a, a, a] .
*/
