/*Ex. 6 Escreva um predicado superconjunto-2 que recebe duas listas (de constantes) como argumentos e
verifica se a primeira lista é um superconjunto da segunda.*/

membro([],[]).
membro(X,[X|_]).
membro(X,[_|T]):-
	membro(X,T).


subconjunto([],[Y|Ys]):-
	membro([],[Y|Ys]).
	
subconjunto([X|Xs],[Y|Ys]):-
	membro(X,[Y|Ys]),
	subconjunto(Xs,[Y|Ys]).
	
superconjunto([X|Xs],[Y|Ys]):-subconjunto([Y|Ys],[X|Xs]).
