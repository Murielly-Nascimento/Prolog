/*E. 3 Escreva um predicado binário tipotermo(+Termo,?Tipo) que recebe um termo e devolve o(s)
tipo(s) daquele termo(atomo, numero, contante, variavel, etc.). Os tipos devem ser devolvidos
em ordem de generalidade. O predicado deveria, por exemplo, comportar-se da seguinte forma.*/

termoComplexo(X):-
    nonvar(X), %Não é uma variável
    functor(X,_,A), %Tem aridade maior que 0, ou seja,nao eh constante.
    A>0.

tipoTermo(X,Y):-
	atom(X), Y = atomo;
	number(X), Y = número;
	atomic(X), Y = constante;
	var(X), Y = variável;
	functor(X,_,A), A =:= 0, Y = termo_simples;
	termoComplexo(X), Y = termo_complexo;
	functor(X,_,_), Y = termo.
	
