/*Ex. 17 Modifique o reconhecedor do exercı́cio anterior para que ele também produza os dı́gitos do
número reconhecido em uma lista.*/

cardinal(X) --> milhar(X); centena(X); dezena(X); unidade(X).

unidade([0]) -->[zero].
unidade([1]) --> [um].
unidade([2]) --> [dois].
unidade([3]) --> [tres].
unidade([4]) --> [quatro].
unidade([5]) --> [cinco].
unidade([6]) --> [seis].
unidade([7]) --> [sete].
unidade([8]) --> [oito].
unidade([9]) --> [nove].

dezena([1,0]) --> [dez].
dezena([1,1]) -->[onze].
dezena([1,2]) -->[doze].
dezena([1,3]) -->[treze].
dezena([1,4]) -->[quatorze].
dezena([1,5]) -->[quinze].
dezena([1,6]) -->[dezesseis].
dezena([1,7]) -->[dezessete].
dezena([1,8]) -->[dezoito].
dezena([1,9]) -->[dezenove].

dezena([2,0]) --> [vinte].
dezena([2|T]) --> [vinte,e],unidade(T).
dezena([3,0]) --> [trinta].
dezena([3|T]) --> [trinta,e],unidade(T).
dezena([4,0]) --> [quarenta].
dezena([4|T]) --> [quarenta,e],unidade(T).
dezena([5,0]) --> [cinquenta].
dezena([5|T]) --> [cinquenta,e],unidade(T).
dezena([6,0]) --> [sessenta].
dezena([6|T]) --> [sessenta,e],unidade(T).
dezena([7,0]) --> [setenta].
dezena([7|T]) --> [setenta,e],unidade(T).
dezena([8,0]) --> [oitenta].
dezena([8|T]) --> [oitenta,e],unidade(T).
dezena([9,0]) --> [noventa].
dezena([9|T]) --> [noventa,e],unidade(T).

centena([1,0,0]) --> [cem].
centena([1|Ts]) --> [cento,e],dezena(Ts).
centena([2,0,0]) --> [duzentos].
centena([2|Ts]) --> [duzentos,e],dezena(Ts).
centena([3,0,0]) --> [trezentos].
centena([3|Ts]) --> [trezentos,e],dezena(Ts).
centena([4,0,0]) --> [quatrocentos].
centena([4|Ts]) --> [quatrocentos,e],dezena(Ts).
centena([5,0,0]) --> [quinhentos].
centena([5|Ts]) --> [quinhentos,e],dezena(Ts).
centena([6,0,0]) --> [seiscentos].
centena([6|Ts]) --> [seiscentos,e],dezena(Ts).
centena([7,0,0]) --> [setecentos].
centena([7|Ts]) --> [setecentos,e],dezena(Ts).
centena([8,0,0]) --> [oitocentos].
centena([8|Ts]) --> [oitocentos,e],dezena(Ts).
centena([9,0,0]) --> [novecentos].
centena([9|Ts]) --> [novecentos,e],dezena(Ts).

milhar([1,0,0,0]) -->[mil].






