/*Ex. 2 Depois, digite o segundo reconhecedor, aquele baseado em listas de diferenças, e execute
mais rastreamentos. Como você verá, existe um ganho dramático em eficiência. Além disso,
mesmo se você acha a ideia de listas de diferenças um pouco difı́cil de seguir, você verá
que os rastreamentos são muito simples de entender, especialmente quando comparados aos
monstros produzidos pela implementação baseada em append.*/

s(A-C):- sn(A-B), sv(B-C).

sn(A-C):- det(A-B), n(B-C). 

sv(A-C):- v(A-B), sn(B-C). 
sv(A-C):- v(A-C).

det([o|P]-P).           
det([a|P]-P). 

n([homem|P]-P).    
n([mulher|P]-P).      
n([bola|P]-P).

v([chuta|P]-P). 

/*
?- s([o,homem,chuta,o,homem]-[]).
true .

?- s(X-[]).
X = [o, homem, chuta, o, homem] .

?- sn(X-[]).
X = [o, homem] ;
X = [o, mulher] ;
X = [o, bola] ;
X = [a, homem] ;
X = [a, mulher] ;
X = [a, bola].

*/




