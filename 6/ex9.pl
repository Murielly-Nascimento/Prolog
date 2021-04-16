/*E. 9 Defina um operador infixo ++ que combina dois horários em uma expressão, tal como 3 h 20 ++ 4 h 10.
Para este exercı́cio basta definir o operador, depois o usaremos para representar a soma de dois
horários.*/

:-op(300,xfx,h).
:-op(350,xfx,++).

_ h _ ++ _ h _.
