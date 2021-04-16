%E 19

f(X):- X = p.
f(X):- X = q,!.
f(X):- X = r.

/*
?- f(p).
true ;
false.

?- f(q).
true.

?- f(r).
true.

?- f(X).
X = p ;
X = q.
*/
