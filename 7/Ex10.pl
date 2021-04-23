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

