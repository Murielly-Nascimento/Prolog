/*Ex. 15 Primeiro, reúna todas as coisas que aprendeu sobre DCGs para Português em uma única
DCG. Em particular, nessa semana vimos como usar argumentos extras para lidar com a
distinção sujeito-objeto, e nos exercı́cios anteriores você usou argumentos adicionais para
lidar com a distinção singular-plural. Escreva uma DCG que trate ambos. Além disto,
escreva a DCG de tal forma que ela produza árvores sintáticas e faça uso de um léxico
separado.*/

s --> sn(sujeito,Num), sv(Num).

sn(_,Num) --> det(Gen,Num), n(Gen,Num).
sn(X,Num) --> pro(X,_Gen,Num).

sv(Num) --> v(Num), sn(objeto,_).
sv(Num) --> v(Num).

det(Gen,Num) --> [Palavra],{lex(Palavra,det(Gen,Num))}.

n(Gen,Num) --> [Palavra],{lex(Palavra,n(Gen,Num))}.

v(Num) --> [Palavra],{lex(Palavra,v(Num))}.

pro(X,Gen,Num) -->[Palavra],{lex(Palavra,pro(X,Gen,Num))}.

%Dicionário ou Léxico.

lex(o,det(masc,sing)).
lex(a,det(fem,sing)).

lex(os,det(masc,plur)).
lex(as,det(fem,plur)).

lex(mulher,n(fem,sing)).
lex(homem,n(masc,sing)).

lex(mulheres,n(fem,plur)).
lex(homens,n(masc,plur)).

lex(bate,v(sing)).
lex(batem,v(plural)).

lex(ele,pro(sujeito,masc,sing)).
lex(ela,pro(sujeito,fem,sing)).
lex(nele,pro(objeto,masc,sing)).
lex(nela,pro(objeto,fem,sing)).

lex(eles,pro(sujeito,masc,plur)).
lex(elas,pro(sujeito,fem,plur)).
lex(neles,pro(objeto,masc,plur)).
lex(nelas,pro(objeto,fem,plur)).



