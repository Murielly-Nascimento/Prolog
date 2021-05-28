/*Ex. 13 Suponha que adicionemos o nome “homens”, que é plural, e o verbo “batem”. Então,
gostarı́amos de uma DCG que diga que “O homem bate” está correto, “Os homens batem”
está correto, “O homem batem” não está correto e que “Os homens bate” também não está
correto. Altere a DCG tal que ela corretamente trate estas sentenças. Use um argumento
extra para lidar com a distinção singular-plural.*/

s --> sn(sujeito,Num), sv(Num).

sn(_,Num) --> det(Num), n(sujeito,Num).

sv(Num) --> v(Num), sn(_,Num).
sv(Num) --> v(Num).

det(sing) --> [o].
det(plural) -->[os].
det(sing) --> [a].

n(sujeito,sing) --> [mulher].
n(sujeito,sing) --> [homem].
n(sujeito,plural) --> [homens].

v(sing) --> [bate].
v(plural) -->[batem].
