/*Ex. 16 Escreva uma DCG que reconheça numerais cardinais entre zero e mil escritos por extenso
em Português.*/

cardinal --> milhar;centena;dezena;unidade.

unidade -->[zero].
unidade --> [um].
unidade --> [dois].
unidade --> [tres].
unidade --> [quatro].
unidade --> [cinco].
unidade --> [seis].
unidade --> [sete].
unidade --> [oito].
unidade --> [nove].

dezena --> [dez].
dezena -->[onze].
dezena -->[doze].
dezena -->[treze].
dezena -->[quatorze].
dezena -->[quinze].
dezena -->[dezesseis].
dezena -->[dezessete].
dezena -->[dezoito].
dezena -->[dezenove].

dezena --> [vinte].
dezena --> [vinte,e],unidade.
dezena --> [trinta].
dezena --> [trinta,e],unidade.
dezena --> [quarenta].
dezena --> [quarenta,e],unidade.
dezena --> [cinquenta].
dezena --> [cinquenta,e],unidade.
dezena --> [sessenta].
dezena --> [sessenta,e],unidade.
dezena --> [setenta].
dezena --> [setenta,e],unidade.
dezena --> [oitenta].
dezena --> [oitenta,e],unidade.
dezena --> [noventa].
dezena --> [noventa,e],unidade.

centena --> [cem].
centena --> [cento,e],dezena.
centena --> [duzentos].
centena --> [duzentos,e],dezena.
centena --> [trezentos].
centena --> [trezentos,e],dezena.
centena --> [quatrocentos].
centena --> [quatrocentos,e],dezena.
centena --> [quinhentos].
centena --> [quinhentos,e],dezena.
centena --> [seiscentos].
centena --> [seiscentos,e],dezena.
centena --> [setecentos].
centena --> [setecentos,e],dezena.
centena --> [oitocentos].
centena --> [oitocentos,e],dezena.
centena --> [novecentos].
centena --> [novecentos,e],dezena.

milhar -->[mil].










































/*
cardinal -->dezena(_);unidade(_). 

unidade([zero])-->[zero].
unidade([um]) --> [um].
unidade([dois]) --> [dois].
unidade([tres]) --> [tres].
unidade([quatro]) --> [quatro].
unidade([cinco]) --> [cinco].
unidade([seis]) --> [seis].
unidade([sete]) --> [sete].
unidade([oito]) --> [oito].
unidade([nove]) --> [nove].

dezena([dez]) --> [dez].
dezena([onze]) -->[onze].
dezena([doze]) -->[doze].
dezena([treze]) -->[treze].
dezena([quatorze]) -->[quatorze].
dezena([quinze]) -->[quinze].
dezena([dezesseis]) -->[dezesseis].
dezena([dezesete]) -->[dezesete].
dezena([dezoito]) -->[dezoito].
dezena([dezenove]) -->[dezenove].

dezena([vinte])-->[vinte].
dezena([vinte,e|D])-->[vinte],unidade(D).

dezena([trinta]) -->[trinta].
dezena([trinta, e|T]) -->[trinta],unidade(T).
dezena([quarenta])-->[quarenta].
dezena([quarenta, e|T])-->[quarenta],unidade(T).
dezena([cinquenta])-->[cinquenta].
dezena([cinquenta, e|T])-->[cinquenta],unidade(T).
dezena([sessenta])-->[sessenta].
dezena([sessenta, e|T])-->[sessenta],unidade(T).
dezena([setenta])-->[setenta].
dezena([setenta, e|T])-->[setenta],unidade(T).
dezena([oitenta])-->[oitenta].
dezena([oitenta, e|T])-->[oitenta],unidade(T).
dezena([noventa])-->[noventa].
dezena([noventa, e|T])-->[noventa],unidade(T).

centena([cem]) --> [cem].
centena([cem,e|Hs]) --> [cem],dezena(Hs).
centena([duzentos]) -->[duzentos].
centena([duzentos, e|Hs]) -->[duzentos],dezena(Hs).
centena([trezentos])-->[trezentos].
centena([trezentos, e|Hs])-->[trezentos],dezena(Hs).
centena([quatrocentos])-->[quatrocentos].
centena([quatrocentos, e|Hs])-->[quatrocentos],dezena(Hs).
centena([quinhentos])-->[quinhentos].
centena([quinhentos, e|Hs])-->[quinhentos],dezena(Hs).
centena([seissentos])-->[seissentos].
centena([seissentos, e|Hs])-->[seissentos],dezena(Hs).
centena([setessentos])-->[setessentos].
centena([setessentos, e|Hs])-->[setessentos],dezena(Hs).
centena([oitossentos])-->[oitossentos].
centena([oitossentos, e|Hs])-->[oitossentos],dezena(Hs).
centena([novessentos])-->[novessentos].
centena([novessentos, e|Hs])-->[novessentos],dezena(Hs).

milhar([mil])-->[mil].
*/


