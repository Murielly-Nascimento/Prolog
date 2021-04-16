/*Ex. 13 Em aula discutimos o predicado maxAcum-3 que retorna o maior elemento em uma lista de inteiros.
Modifique este código para criar o predicado minAcum-3 que retorna o menor elemento de uma lista
de inteiros.*/

minAcum([H|T],A,Min):- H < A,minAcum(T,H,Min).

minAcum([H|T],A,Min):- H >= A,minAcum(T,A,Min).

minAcum([],A,A).

min([H|T],Min):-minAcum(T,H,Min).
