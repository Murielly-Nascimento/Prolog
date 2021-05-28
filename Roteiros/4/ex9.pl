/*Ex. 9 Defina um predicado ocorrencias(X,L,N) que é verdadeiro se, e somente se, X ocorre N
vezes na lista L.*/

ocorrencias(_,[],Acc,Acc).
ocorrencias(X,[X|T],Acc,Resultado):-
    NovoAcc is Acc + 1,
    ocorrencias(X,T,NovoAcc,Resultado).

ocorrencias(X,[_|T],Acc,Resultado):-
    ocorrencias(X,T,Acc,Resultado).
    
ocorrencias(X,[X|T],Resultado):-ocorrencias(X,[X|T],0,Resultado).
