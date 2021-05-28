/*E. 4 Escreva um programa que define o predicado termoaterrado(+Termo) que testa se Termo é um
termo aterrado. Termos aterrados são termos que não contém variáveis. Aqui estão exemplos
de como o predicado deveria comportar-se:*/

termoComplexo(X):-
    nonvar(X), %Não é uma variável
    functor(X,_,A), %Tem aridade maior que 0, ou seja,nao eh constante.
    A>0.

termoaterrado(X):-
	termoComplexo(X),arg(_,X,A),var(A),!,fail;
	termoComplexo(X),arg(_,X,A),nonvar(A);
	nonvar(X).
	
