/*Ex. 7 Como Prolog responde às seguintes consultas?


(a) [a,b,c,d] = [a,[b,c,d]].

	?- [a,b,c,d] = [a,[b,c,d]].
	false.

(b) [a,b,c,d] = [a|[b,c,d]].

	?- [a,b,c,d] = [a|[b,c,d]].
	true.

(c) [a,b,c,d] = [a,b,[c,d]].

	?- [a,b,c,d] = [a,b,[c,d]].
	false.

(d) [a,b,c,d] = [a,b|[c,d]].

	?- [a,b,c,d] = [a,b|[c,d]].
	true.

(e) [a,b,c,d] = [a,b,c,[d]].

	?- [a,b,c,d] = [a,b,c,[d]].
	false.

(f) [a,b,c,d] = [a,b,c|[d]].

	?- [a,b,c,d] = [a,b,c|[d]].
	true.

(g) [a,b,c,d] = [a,b,c,d,[]].

	?- [a,b,c,d] = [a,b,c,d,[]].
	false.

(h) [a,b,c,d] = [a,b,c,d|[]].

	?- [a,b,c,d] = [a,b,c,d|[]].
	true.

(i) [] = _.

	?- [] = _.
	true.

(j) [] = [_].

	?- [] = [_].
	false.

(k) [] = [_|[]].

	?- [] = [_|[]].
	false.

*/
