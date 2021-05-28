/*Ex. 11 Escreva um predicado fatores_primos(N,F) que recebe um número natural positivo N e
devolve uma lista F contendo sua decomposição em fatores primos.*/

primo(1).
primo(2).
primo(3).

primo(X) :-
    X > 3,
    X mod 2 =\= 0,
    W = 1, 
    N is W + 1,
    primo(X,N).
    
primo(X,X):-true.
primo(X,N) :-
    N < X,
    X mod N =\=0,
    M is N + 1,
    primo(X,M).
		
fatores_primos(N, L) :-
    fatores_primos(N, 2, L).

fatores_primos(1, _, []).
fatores_primos(N, P, PFs) :-
    primo(P),
    N mod P =:=0,
    N1 is N div P,
    fatores_primos(N1, P, PFs2),
    PFs = [P|PFs2].
    
fatores_primos(N, P, PFs) :-
    P1 is P+1,
    P1 =< N,
    fatores_primos(N, P1, PFs).


	

