/*Ex. 3 Imagine que a base de conhecimentos seguinte descreva um labirinto.
Os fatos determinam quais pontos estão conectados, ou seja, os pontos
que se pode alcançar com exatamente um passo. Além disto, imagine
que todos os caminhos são ruas de mão única, tal que você somente
pode caminhar por elas em uma direção. Assim, você poderá ir do
ponto 1 para o ponto 2, mas não poderá ir de 2 para 1.*/

conectado(1,2).
conectado(3,4).
conectado(5,6).
conectado(7,8).
conectado(9,10).
conectado(12,13).
conectado(13,14).
conectado(15,16).
conectado(17,18).
conectado(19,20).
conectado(4,1).
conectado(6,3).
conectado(4,7).
conectado(6,11).
conectado(14,9).
conectado(11,15).
conectado(16,12).
conectado(14,17).
conectado(16,19).

caminho(X,Y):-conectado(X,Y).
caminho(X,Y):-conectado(X,Z),caminho(Z,Y).
