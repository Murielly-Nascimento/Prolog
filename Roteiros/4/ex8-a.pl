/*Ex. 8 Considere uma representação de conjuntos como listas. Defina os seguintes predicados:

(a) disjunto(L,K) é verdadeiro se, e somente se, L e K são disjuntos, ou seja, não possuem
elementos em comum.
*/

membro([],[]).
membro(X,[X|_]).
membro(X,[_|T]):-
	membro(X,T).

disjunto([],_).
disjunto(_,[]).
disjunto([H|T],Lista):-
	not(membro(H,Lista)),
	disjunto(T,Lista).

