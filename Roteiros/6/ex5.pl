/*E. 5 Assuma que temos as seguintes definições de operadores:*/

:- op(300, xfx, [são, é_um]).
:- op(300, fx, gosta_de).
:- op(200, xfy, e).
:- op(100, fy, famoso).

_ é_um _.
gosta_de _.
_ são _.

/*
?- harry é_um bruxo.
true.

?-dumbledore é_um 'famoso famoso mago'.
true.

?-'harry e ron e hermione' são amigos.
true.

?-harry é_um mago, gosta_de quadribol .
true.

*/
