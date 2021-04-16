/*Escreva as regras Prolog comuns que correspondam a estas regras DCGs. Quais são as
primeiras três respostas que o Prolog dá à consulta s(X,[])?*/

s(A, B) :-
    foo(A, C),
    bar(C, D),
    wiggle(D, B).


foo([chu|A], A).
foo(A, B) :-
    foo(A, C),
    foo(C, B).
    
bar(A, B) :-
    mar(A, C),
    zar(C, B).s

mar(A, B) :-
    me(A, C),
    my(C, B).
    
me([eu|A], A).

my([sou|A], A).

zar(A, B) :-
    blar(A, C),
    car(C, B).

blar([um|A], A).

car([trem|A], A).

wiggle([tchu|A], A).
wiggle(A, B) :-
    wiggle(A, C),
    wiggle(C, B).
    
/*
?- s(X,[]).
X = [chu, eu, sou, um, trem, tchu] ;
X = [chu, eu, sou, um, trem, tchu, tchu] ;
X = [chu, eu, sou, um, trem, tchu, tchu, tchu] ;
X = [chu, eu, sou, um, trem, tchu, tchu, tchu, tchu] ;
X = [chu, eu, sou, um, trem, tchu, tchu, tchu, tchu|...] ;
X = [chu, eu, sou, um, trem, tchu, tchu, tchu, tchu|...] ;
X = [chu, eu, sou, um, trem, tchu, tchu, tchu, tchu|...] .

*/








