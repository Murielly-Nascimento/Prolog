/*Ex. 4 Agora execute alguns rastreamentos. Exceto pelos nomes das variáveis, os rastreamentos
que você observará aqui deveriam ser muito similares àqueles observados quando executava
o rastreador baseado em listas de diferenças.*/

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
?- s([o,homem,chuta,a,mulher],[ ]).
true .

?- s(S,[]).
S = [o, homem, chuta, o, homem] .

?- s(S,[]).
S = [o, homem, chuta, o, homem] ;
S = [o, homem, chuta, o, mulher] ;
S = [o, homem, chuta, o, bola] .

?- sn(S,[]).
S = [o, homem] ;
S = [o, mulher] ;
S = [o, bola] .

?- det(X,[]).
X = [o] .
*/




