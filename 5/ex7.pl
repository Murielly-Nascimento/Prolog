/*Ex. 7 A linguagem que os lógicos chamam de lógica proposicional sobre os sı́mbolos proposicionais
p, q e r pode ser definida pela seguinte gramática livre de contexto[...]Escreva uma DCG que gere esta linguagem.*/


prop --> [p].
prop --> [q].
prop --> [r].

prop --> não.
prop --> e.
prop --> ou.
prop --> implica.

não --> [não, p].
não --> [não, q].
não --> [não, r].

e --> [p,e,q].
e --> [p,e,r].
e --> [q,e,r].

ou --> [p,ou,q].
ou --> [p,ou,r].
ou --> [q,ou,r].

implica --> [p,implica,q].
implica --> [p,implica,r].
implica --> [q,implica,r].

