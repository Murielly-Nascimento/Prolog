/*Ex. 12 Realize alguns rastreamentos para a DCG para a linguagem a n b n c n . Experimente casos onde
os três blocos de as, bs e cs sejam de fato do mesmo tamanho, assim como casos onde isto
não ocorre.*/

s(N) -->as(N), bs(N), cs(N).

as(0) --> [].
as(NumA) -->[a], as(N),{NumA is N + 1}.

bs(0) --> [].
bs(NumB) -->[b], bs(N),{NumB is N + 1}.

cs(0) --> [].
cs(NumC) -->[c], cs(N),{NumC is N + 1}.

/*
?- s(N,[a,a,b,b,c,c],[]).
N = 2 .

?- s(1,[a,a,b,b,c,c],[]).
false.

?- s(1,[a,b,c],[]).
true .
*/
