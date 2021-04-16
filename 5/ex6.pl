/*Ex. 6 A linguagem formal a n b 2m c 2m d n consiste de todas as strings da seguinte forma: um bloco
contı́guo de as seguido por um bloco contı́guo de bs, seguido por um bloco contı́guo de cs,
seguido por um bloco contı́guo de ds, tal que os blocos a e d são exatamente do mesmo
tamanho, e os blocos b e c são exatamente do mesmo tamanho e, além disto, consistem de
um número par de bs e cs. Por exemplo, , abbccd e aaabbbbccccddd pertecem a a n b 2m c 2m d n .
Escreva uma DCG que gere esta linguagem.*/

s --> a(X),b(Y),c(Y),d(X), {X=Z, Y=W}.

a(N+1)-->[a],a(N).
a(1)-->[a].

b(N+1)-->[b],b(N).
b(1)-->[b].

c(N+1)-->[c],c(N).
c(1)-->[c].

d(N+1)-->[d],d(N).
d(1)-->[d].




