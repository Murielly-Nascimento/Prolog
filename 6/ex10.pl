/*E. 10 Defina um operador infixo ** que combina um natural e um horário em uma expressão, tal como
3 ** 4 h 10. Para este exercı́cio basta definir o operador, depois o usaremos para representar
a multiplicação de um horário por um natural. Dê a este operador uma precedência menor que
a de ++.*/

:-op(300,xfx,h).
:-op(310,xfx,**).

_ ** _ h _.
