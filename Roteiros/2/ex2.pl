/*Ex. 2 Escreva um provador de teoremas para o cálculo proposicional. O provador deverá ser capaz de lidar com equivalências, implicações, disjunções, conjunções e negação. A seguir descrevem-se os predicados a serem usados nas definições.

• equiv: para a equivalência;
• impl: para a implicação;
• ou: para a disjunção;
• e: para a conjunção;
• nao: para a negação.

Defina o provador através do predicado prova.
*/

a(verdade).
b(falso).

nao(X):- b(X).

e(X,Y):- a(X),a(Y).

ou(X,Y):-
	a(X),a(Y);
	a(X),b(Y);
	b(X),a(Y).

impl(X,Y):-
	a(X),a(Y);
	b(X),b(Y);
	b(X),a(Y).

equiv(X,Y):-
	a(X),a(Y);
	b(X),b(Y).

prova(nao(X)):-nao(X).

prova(e(X,Y)):- e(X,Y).
prova(e(X,Y)):-prova(e(Z,Y)).

prova(ou(X,Y)):-ou(X,Y).
prova(ou(X,Y)):-prova(ou(Z,Y)).

prova(impl(X,Y)):- impl(X,Y).
prova(impĺ(X,Y)):-prova(impl(Z,Y)).

prova(equiv(X,Y)):- equiv(X,Y).
prova(equiv(X,Y)):-prova(equiv(Z,Y)).


