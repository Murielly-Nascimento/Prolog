/*E 10 Qual é a resposta do Prolog às seguintes consultas:
(a) findall(X, q(blob,X), Lista).
(b) findall(X, q(X,blug), Lista).
(c) findall(X, q(X,Y), Lista).
(d) bagof(X, q(X,Y), Lista).
(e) setof(X, Y^q(X,Y), Lista).*/

q(blob,blug).
q(blob,blag).
q(blob,blig).
q(blaf,blag).
q(dang,dong).
q(dang,blug).
q(flab,blob).

/*
?-findall(X,q(blob,X),Lista).
Lista = [blug, blag, blig]

?-findall(X, q(X,blug), Lista).
Lista = [blob, dang]


?-findall(X, q(X,blug), Lista).
Lista = [blob, dang]


?-bagof(X, q(X,Y), Lista).
Lista = [blob, blaf],
Y = blag
Lista = [blob],
Y = blig
Lista = [flab],
Y = blob
Lista = [blob, dang],
Y = blug
Lista = [dang],
Y = dong

?-setof(X, Y^q(X,Y), Lista).
Lista = [blaf, blob, dang, flab]

*/

