/*Ex. 1 Primeiro digite o reconhecedor simples baseado em append, discutido em sala de aula, e
depois execute alguns rastreamentos. Como você descobrirá, não exageramos ao dizer que
a performance da gramática baseada em append era muito pobre. Mesmo para sentenças
simples como A mulher chuta o homem, você verá que o rastreamento é muito longo e muito
difı́cil de seguir.*/

s(C):- sn(A), sv(B), append(A,B,C).

sn(C):- det(A), n(B), append(A,B,C).	

sv(C):- v(A), sn(B), append(A,B,C).
sv(C):- v(C).

det([o]).            
det([a]). 

n([homem]).     
n([mulher]).      
n([bola]). 

v([chuta]).

/*
?- s([a,mulher,chuta,o,homem]).
true .

?- s(S).
S = [o, homem, chuta, o, homem] .

*/
