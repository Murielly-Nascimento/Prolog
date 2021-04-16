/*Ex. 10 Seja a n b 2n a linguagem formal que contém todas as strings da seguinte forma: um bloco
contı́guo de as de tamanho n seguido por um bloco contı́guo de bs de tamanho 2n, e nada
mais. Por exemplo, abb, aabbbb e aaabbbbbb pertencem a a n b 2n , assim como a string vazia.
Escreva uma DCG que gere esta linguagem.*/

s --> [].
s --> e,s,d,d.

e --> [a].
d --> [b].
