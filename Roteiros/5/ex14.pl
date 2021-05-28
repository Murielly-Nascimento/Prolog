/*Ex. 14 Traduza a seguinte regra DCG em um formato padrão de regras do Prolog:
	cangu(V,R,Q) --> ru(V,R), salta(Q,Q), {marsupial(V,R,Q)}.
*/

cangu(V,R,Q) --> ru(V,R), salta(Q,Q), {marsupial(V,R,Q)}.

cangu(V, R, Q, A, B) :-
    ru(V, R, A, C),
    salta(Q, Q, C, D),
    marsupial(V, R, Q),
    B=D.

