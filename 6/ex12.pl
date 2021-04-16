/*E. 12 Assuma que se tenha o seguinte banco de dados:*/

p(1).
p(2):- !.
p(3).

/*Escreva todas as respostas do Prolog às seguintes consultas:

?- p(X).
X = 1 ;
X = 2.

?- p(X),p(Y).
X = Y, Y = 1 ;
X = 1,
Y = 2 ;
X = 2,
Y = 1 ;
X = Y, Y = 2.

?- p(X),!,p(Y).
X = Y, Y = 1 ;
X = 1,
Y = 2.


*/
