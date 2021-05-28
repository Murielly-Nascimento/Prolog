/*Ex. 3 Defina um predicado dec_para_bin(N,B) que converte um número natural N em sua repre-
sentação binária B, uma lista.*/

dec_para_bin(0,[]).
dec_para_bin(N,[H|T]):-
	H is N mod 2,
	NovoN is N div 2,
	dec_para_bin(NovoN,T).
