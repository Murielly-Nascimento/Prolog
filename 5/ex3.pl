/*Ex. 3 Na sequência, digite a DCG discutida na aula. Digite listing para ver o resultado da
tradução feita pelo Prolog das regras DCGs. Como o seu sistema traduz regras da forma
Det --> [o]?*/

s --> sn, sv.

sn --> det, n.

sv --> v, sn.
sv --> v.

det --> [o]. 
det --> [a].

n--> [homem].       
n--> [mulher].      
n --> [bola].

v--> [chuta].

/*
s(A, B) :-
    sn(A, C),
    sv(C, B).

sn(A, B) :-
    det(A, C),
    n(C, B).

sv(A, B) :-
    v(A, C),
    sn(C, B).
sv(A, B) :-
    v(A, B).
    
det([o|A], A).
det([a|A], A).

v([chuta|A], A).

*/





