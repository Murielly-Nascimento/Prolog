/*Ex. 10 Defina um predicado ocorre(L,N,X) que é verdadeiro se, e somente se, X é o elemento que
ocorre na posição N da lista L.*/

ocorre([],_,0).
ocorre([X|_],1,X).
ocorre([_|T],N,X):-
    NovoN is N - 1,
    ocorre(T,NovoN,X).
    

