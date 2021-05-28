/*E. 2 Experimente todos os métodos discutidos na aula para lidar com as preferências de Vicente.
Isto é, faça experimentos com o programa que usa a combinação de corte com fail, com
o programa que usa negação como falha corretamente e também com o programa que
torna-se errôneo quando utiliza negação no lugar errado.*/

/*
VERSÃO COM CUT E FAIL

aprecia(vicente,X):-
    bigKahunaBurger(X),!,fail.
aprecia(vicente,X):-
    hamburguer(X).

hamburguer(X):- bigMac(X).
hamburguer(X):- bigKahunaBurger(X).
hamburguer(X):- whopper(X).

bigMac(a). 
bigMac(c).
bigKahunaBurger(b).
whopper(d).

[trace]  ?- aprecia(vicente,a).
   Call: (10) aprecia(vicente, a) ? creep
   Call: (11) bigKahunaBurger(a) ? creep
   Fail: (11) bigKahunaBurger(a) ? creep
   Redo: (10) aprecia(vicente, a) ? creep
   Call: (11) hamburguer(a) ? creep
   Call: (12) bigMac(a) ? creep
   Exit: (12) bigMac(a) ? creep
   Exit: (11) hamburguer(a) ? creep
   Exit: (10) aprecia(vicente, a) ? creep
true ;
   Redo: (11) hamburguer(a) ? creep
   Call: (12) bigKahunaBurger(a) ? creep
   Fail: (12) bigKahunaBurger(a) ? creep
   Redo: (11) hamburguer(a) ? creep
   Call: (12) whopper(a) ? creep
   Fail: (12) whopper(a) ? creep
   Fail: (11) hamburguer(a) ? creep
   Fail: (10) aprecia(vicente, a) ? creep
false.

[trace]  ?- aprecia(vicente,Qual).
   Call: (10) aprecia(vicente, _10312) ? creep
   Call: (11) bigKahunaBurger(_10312) ? creep
   Exit: (11) bigKahunaBurger(b) ? creep
   Call: (11) fail ? creep
   Fail: (11) fail ? creep
   Fail: (10) aprecia(vicente, _10312) ? creep
false.

VERSÃO COM NEGAÇÃO COMO FALHA

aprecia(vicente,X):-
    hamburguer(X),
    not(bigKahunaBurger(X)).

hamburguer(X):- bigMac(X).
hamburguer(X):- bigKahunaBurger(X).
hamburguer(X):- whopper(X).

bigMac(a). 
bigMac(c).
bigKahunaBurger(b).
whopper(d).

[trace]  ?- aprecia(vicente,a).
   Call: (10) aprecia(vicente, a) ? creep
   Call: (11) hamburguer(a) ? creep
   Call: (12) bigMac(a) ? creep
   Exit: (12) bigMac(a) ? creep
   Exit: (11) hamburguer(a) ? creep
^  Call: (11) not(bigKahunaBurger(a)) ? creep
   Call: (12) bigKahunaBurger(a) ? creep
   Fail: (12) bigKahunaBurger(a) ? creep
^  Exit: (11) not(user:bigKahunaBurger(a)) ? creep
   Exit: (10) aprecia(vicente, a) ? creep
true ;
   Redo: (11) hamburguer(a) ? creep
   Call: (12) bigKahunaBurger(a) ? creep
   Fail: (12) bigKahunaBurger(a) ? creep
   Redo: (11) hamburguer(a) ? creep
   Call: (12) whopper(a) ? creep
   Fail: (12) whopper(a) ? creep
   Fail: (11) hamburguer(a) ? creep
   Fail: (10) aprecia(vicente, a) ? creep
false.

[trace]  ?- aprecia(vicente,Qual).
   Call: (10) aprecia(vicente, _15110) ? creep
   Call: (11) hamburguer(_15110) ? creep
   Call: (12) bigMac(_15110) ? creep
   Exit: (12) bigMac(a) ? creep
   Exit: (11) hamburguer(a) ? creep
^  Call: (11) not(bigKahunaBurger(a)) ? creep
   Call: (12) bigKahunaBurger(a) ? creep
   Fail: (12) bigKahunaBurger(a) ? creep
^  Exit: (11) not(user:bigKahunaBurger(a)) ? creep
   Exit: (10) aprecia(vicente, a) ? creep
Qual = a ;
   Redo: (12) bigMac(_15110) ? creep
   Exit: (12) bigMac(c) ? creep
   Exit: (11) hamburguer(c) ? creep
^  Call: (11) not(bigKahunaBurger(c)) ? creep
   Call: (12) bigKahunaBurger(c) ? creep
   Fail: (12) bigKahunaBurger(c) ? creep
^  Exit: (11) not(user:bigKahunaBurger(c)) ? creep
   Exit: (10) aprecia(vicente, c) ? creep
Qual = c ;
   Redo: (11) hamburguer(_15110) ? creep
   Call: (12) bigKahunaBurger(_15110) ? creep
   Exit: (12) bigKahunaBurger(b) ? creep
   Exit: (11) hamburguer(b) ? creep
^  Call: (11) not(bigKahunaBurger(b)) ? creep
   Call: (12) bigKahunaBurger(b) ? creep
   Exit: (12) bigKahunaBurger(b) ? creep
^  Fail: (11) not(user:bigKahunaBurger(b)) ? creep
   Redo: (11) hamburguer(_15110) ? creep
   Call: (12) whopper(_15110) ? creep
   Exit: (12) whopper(d) ? creep
   Exit: (11) hamburguer(d) ? creep
^  Call: (11) not(bigKahunaBurger(d)) ? creep
   Call: (12) bigKahunaBurger(d) ? creep
   Fail: (12) bigKahunaBurger(d) ? creep
^  Exit: (11) not(user:bigKahunaBurger(d)) ? creep
   Exit: (10) aprecia(vicente, d) ? creep
Qual = d.

VERSÃO REVISADA COM NEGAÇÃO COMO FALHA

aprecia(vicente,X):-
    \+bigKahunaBurger(X),  % \+ = not
    hamburguer(X).

hamburguer(X):- bigMac(X).
hamburguer(X):- bigKahunaBurger(X).
hamburguer(X):- whopper(X).

bigMac(a). 
bigMac(c).
bigKahunaBurger(b).
whopper(d).

[trace]  ?- aprecia(vicente,a).
   Call: (10) aprecia(vicente, a) ? creep
   Call: (11) bigKahunaBurger(a) ? creep
   Fail: (11) bigKahunaBurger(a) ? creep
   Redo: (10) aprecia(vicente, a) ? creep
   Call: (11) hamburguer(a) ? creep
   Call: (12) bigMac(a) ? creep
   Exit: (12) bigMac(a) ? creep
   Exit: (11) hamburguer(a) ? creep
   Exit: (10) aprecia(vicente, a) ? creep
true ;
   Redo: (11) hamburguer(a) ? creep
   Call: (12) bigKahunaBurger(a) ? creep
   Fail: (12) bigKahunaBurger(a) ? creep
   Redo: (11) hamburguer(a) ? creep
   Call: (12) whopper(a) ? creep
   Fail: (12) whopper(a) ? creep
   Fail: (11) hamburguer(a) ? creep
   Fail: (10) aprecia(vicente, a) ? creep
false.

[trace]  ?- aprecia(vicente,Qual).
   Call: (10) aprecia(vicente, _30590) ? creep
   Call: (11) bigKahunaBurger(_30590) ? creep
   Exit: (11) bigKahunaBurger(b) ? creep
   Fail: (10) aprecia(vicente, _30590) ? creep
false.
*/
