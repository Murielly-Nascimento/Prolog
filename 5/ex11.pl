/*Ex. 11 Rastreie alguns exemplos de DCG que utilizem argumentos extras para tratar a distinção
sujeito - objeto, de DCG que produza análise sintática e de DCG que utilize testes extras
para separar o léxico das regras. Certifique-se de que você compreenda totalmente o modo
com o qual todas as três DCGs funcionam. Use os slides da aula teórica dessa semana.*/

/**DCG com argumentos extras

s --> sn(sujeito), sv.

sn(_) --> det, n.
sn(X)-->pro(X).

sv --> v, sn(objeto).
sv --> v.

det --> [o].              
det --> [a].

n--> [homem].       
n--> [mulher].      

v--> [bate].

pro(sujeito)-->[ele].
pro(sujeito)-->[ela].
pro(objeto)-->[nele].
pro(objeto)-->[nela].

?- s(X,[]).
X = [o, homem, bate, o, homem] ;
X = [o, homem, bate, o, mulher] ;
X = [o, homem, bate, a, homem] ;
X = [o, homem, bate, a, mulher] ;
X = [o, homem, bate, nele] ;
X = [o, homem, bate, nela] ;
X = [o, homem, bate] .
*/

/**DCG Análise Sintática

s(s(SN,SV)) --> sn(sujeito,SN), sv(SV).

sn(_,sn(Det,N)) --> det(Det), n(N).
sn(X,sn(Pro))-->pro(X,Pro).

sv(sv(V,SN)) --> v(V), sn(objeto,SN).
sv(sv(V)) --> v(V).

det(det(o)) --> [o].              
det(det(a)) --> [a].

n(n(homem))--> [homem].       
n(n(mulher))--> [mulher].      

v(v(bate))--> [bate].

pro(sujeito,pro(ele))-->[ele].
pro(sujeito,pro(ela))-->[ela].
pro(objeto,pro(nele))-->[nele].
pro(objeto,pro(nela))-->[nela].

?- phrase(s(Arvore),Sentencas).
Arvore = s(sn(det(o), n(homem)), sv(v(bate), sn(det(o), n(homem)))),
Sentencas = [o, homem, bate, o, homem] ;
Arvore = s(sn(det(o), n(homem)), sv(v(bate), sn(det(o), n(mulher)))),
Sentencas = [o, homem, bate, o, mulher] ;
Arvore = s(sn(det(o), n(homem)), sv(v(bate), sn(det(a), n(homem)))),
Sentencas = [o, homem, bate, a, homem] ;
Arvore = s(sn(det(o), n(homem)), sv(v(bate), sn(det(a), n(mulher)))),
Sentencas = [o, homem, bate, a, mulher] ;
Arvore = s(sn(det(o), n(homem)), sv(v(bate), sn(pro(nele)))),
Sentencas = [o, homem, bate, nele] .
*/

/*DCG com regras e léxico separado

s --> sn, sv.

sn --> det, n.

sv --> v, sn.
sv --> v.

det --> [Palavra],{lex(Palavra,det)}.              
n--> [Palavra],{lex(Palavra,n)}.       
v--> [Palavra],{lex(Palavra,v)}.

%%Fim das regras gramaticais

%%Dicionário ou Léxico

lex(o,det).
lex(a,det).
lex(mulher,n).
lex(homem,n).
lex(bate,v).

?- s(Sentenca,[]).
Sentenca = [o, mulher, bate, o, mulher] ;
Sentenca = [o, mulher, bate, o, homem] ;
Sentenca = [o, mulher, bate, a, mulher] ;
Sentenca = [o, mulher, bate, a, homem] ;
Sentenca = [o, mulher, bate] .
*/







