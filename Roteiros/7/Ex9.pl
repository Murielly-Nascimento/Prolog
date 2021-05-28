/*E. 9 Assuma que se inicie com uma base de dados vazia.*/

/*1º Momento

?-assert(q(a,b)),assertz(q(1,2)),asserta(q(floo,blug)).

:- dynamic q/2.

q(floo, blug).
q(a, b).
q(1, 2).


2º Momento

?-retract(q(1,2)),assertz((p(X):-h(X))).

:- dynamic p/1.

p(A) :-
    h(A)

:- dynamic q/2.

q(floo, blug).
q(a, b).

3º Momento

?-retract(q(_,_)),fail.

:- dynamic p/1.

p(A) :-
    h(A).

:- dynamic q/2.

*/
