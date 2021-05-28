/*Ex. 9 A linguagem formal a n b n − {} consiste de todas as strings a n b n , exceto a string vazia.
Escreva uma DCG que gere esta linguagem.*/

s --> e,d.
s --> e,s,d.

e --> [a].
d --> [b].




