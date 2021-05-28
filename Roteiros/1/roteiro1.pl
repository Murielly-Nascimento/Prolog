%Ex 1. 
/*
Estender o programa Prolog para incluir os relacionamentos mae, homem e mulher.

=======PROGRAMA FAMÍLIA=========

	pai(carlos,ana).
	pai(carlos,juliana).

	mae(ana,cristiano).
	mae(juliana,jorge).

	homem(carlos).
	homem(cristiano).
	homem(jorge).

	mulher(juliana).
	mulher(ana).

=================================

*/	
	


%Ex 2.
/*

=======PROGRAMA FAMÍLIA=========

	pai(carlos,ana).
	pai(carlos,juliana).

	mae(ana,cristiano).
	mae(juliana,jorge).

	homem(carlos).
	homem(cristiano).
	homem(jorge).

	mulher(juliana).
	mulher(ana).

=================================

Escrever em Prolog as seguintes consultas:

	• Quem é pai de Ana?
		
		?- pai(X,ana).	
		X = carlos.

	• Quem é pai de Quem?
	
		?- pai(X,Y).
		X = carlos, Y = ana ;
		X = carlos, Y = juliana.

	• Quem é o avô de Ana?
	
		?- pai(Y,ana),pai(X,Y).
		false.

	Essa consulta retorna falso,porque não há nenhuma relação especificando quem é o pai de carlos.
	Por exemplo: pai(igor,carlos). 
	Se esse for o caso a resposta ficaria assim:
	
	?- pai(Y,ana),pai(X,Y).
	Y = carlos,
	X = igor.

*/

%Ex 3.

/* 

=======PROGRAMA FAMÍLIA=========

	pai(carlos,ana).
	pai(carlos,juliana).

	mae(ana,cristiano).
	mae(juliana,jorge).

	homem(carlos).
	homem(cristiano).
	homem(jorge).

	mulher(juliana).
	mulher(ana).

=================================


Escrever em Prolog as seguintes consultas:
	• Quem são os netos de João?
	
	?- mae(X,Y),pai(carlos,X).
	X = ana,
	Y = cristiano ;
	X = juliana,
	Y = jorge.
	
	• Juliana e Ana têm o mesmo pai?
	
	?- pai(Z,ana),pai(Z,juliana).
	Z = carlos.

*/

%Ex 4.

/*Escreva regras para o relacionamentos filho, filha, irmao, irma,irmaos, tio, tia, primo, prima e avó.

===============PROGRAMA FAMÍLIA=======================

	pai(carlos,ana).
	pai(carlos,juliana).

	mae(ana,cristiano).
	mae(ana,pedro).
	mae(juliana,jorge).

	homem(carlos).
	homem(cristiano).
	homem(jorge).
	homem(pedro).

	mulher(juliana).
	mulher(ana).
	
	filho(X,Y):-
		homem(X), mae(Y,X); 
		homem(X), pai(Y,X).
		
	filha(X,Y):-
		mulher(X), pai(Y,X);
		mulher(X), mae(Y,X).
		
	irmao(X,Y):-
		mae(Z,X), mae(Z,Y), homem(X), X\==Y;
		pai(Z,X), pai(Z,Y), homem(X), X\==Y.
	
	irma(X,Y):-
		pai(Z,X), pai(Z,Y), mulher(X), X\==Y;
		mae(Z,X), mae(Z,Y), mulher(X), X\==Y.
			
	irmaos(X,Y):-
		pai(Z,X), pai(Z,Y),X\==Y;
		mae(Z,X), mae(Z,Y),X\==Y.
			
	tia(X,Y):-			
		mae(Z,Y),irma(X,Z);   
		pai(Z,Y),irma(X,Z).
	
	tio(X,Y):-
		mae(Z,Y),irmao(X,Z);		
		pai(Z,Y),irmao(X,Z).
	
	primo(X,Y):-
		pai(Z,X),tio(Z,Y),homem(X);
		mae(Z,X),tia(Z,Y),homem(X).
	
	prima(X,Y):-
		pai(Z,X),tio(Z,Y),mulher(X);
		mae(Z,X),tia(Z,Y),mulher(X).
	
	avó(X,Y):-
		pai(Z,Y),filho(Z,X),mulher(X);
		mae(Z,Y),filha(Z,X),mulher(X).
		
	avô(X,Y):-
		pai(Z,Y),filho(Z,X),homem(X);
		mae(Z,Y),filha(Z,X),homem(X).
		
====================================================

*/	

%Ex 5.
/*
==========Programa HARRY POTTER=========

	elfo_domestico(dobby).

	bruxo(hermione).
	bruxo('McGonagall').	
	bruxo(rita_skeeter).

	magico(X):- elfo_domestico(X).
	magico(X):- feiticeiro(X).%Essa regra causa um erro no programa, afinal não há nenhum predicado feiticeiro definido anteriormente.
	magico(X):- bruxo(X).
	
========================================
	
	
	?- magico(elfo_domestico).
	false.
	
	?- magico(dobby).
	true .
	
	?- magico(X).
	X = dobby ;
	X = hermione ;
	X = 'McGonagall' ;	
	X = rita_skeeter.
*/

%Ex 6.

/*
	?- feiticeiro(harry).
	ERROR: Unknown procedure: feiticeiro
	
	Para que essa consulta seja válida é preciso ter as seguintes cláusulas:
	
==========Programa HARRY POTTER================
	
	elfo_domestico(dobby).
	
	bruxo(hermione).
	bruxo('McGonagall').	
	bruxo(rita_skeeter).
	
	feiticeiro(harry).
	
	magico(X):- elfo_domestico(X).
	magico(X):- feiticeiro(X).    
	magico(X):- bruxo(X).

==============================================
	
	?- feiticeiro(harry).
	true.
*/

%Ex 7.
/*	
==========Programa HARRY POTTER================
	
	elfo_domestico(dobby).
	
	bruxo(hermione).
	bruxo('McGonagall').	
	bruxo(rita_skeeter).
	
	feiticeiro(harry).
	
	magico(X):- elfo_domestico(X).
	magico(X):- feiticeiro(X).    
	magico(X):- bruxo(X).

==============================================
	
	?- magico(feiticeiro).
	false.
	
	?- magico(X).
	X = dobby ;
	X = harry ;
	X = hermione ;
	X = 'McGonagall' ;
	X = rita_skeeter.

*/

%Ex 8.
/*
==========Programa HARRY POTTER================
	
	elfo_domestico(dobby).
	
	bruxo(hermione).
	bruxo('McGonagall').	
	bruxo(rita_skeeter).
	
	feiticeiro(harry).
	
	magico(X):- elfo_domestico(X).
	magico(X):- feiticeiro(X).    
	magico(X):- bruxo(X).

==============================================

	?- magico('McGonagall').
	true .
*/

%Ex 9.
/*
==========Programa HARRY POTTER================
	
	elfo_domestico(dobby).
	
	bruxo(hermione).
	bruxo('McGonagall').	
	bruxo(rita_skeeter).
	
	feiticeiro(harry).
	
	magico(X):- elfo_domestico(X).
	magico(X):- feiticeiro(X).    
	magico(X):- bruxo(X).

==============================================

	?- magico(Hermione).
	Hermione = dobby ;
	Hermione = harry ;
	Hermione = hermione ;
	Hermione = 'McGonagall' ;
	Hermione = rita_skeeter.
*/

%Ex 10.
/*
=======================MINIGRAMÁTICA==============================

	palavra(artigo,um).
	palavra(artigo,qualquer).
	palavra(nome,criminoso).
	palavra(nome,'mac lanche feliz').
	palavra(verbo,come).
	palavra(verbo,adora).

	sentenca(Palavra1,Palavra2,Palavra3,Palavra4,Palavra5) :-
		palavra(artigo,Palavra1),
		palavra(nome,Palavra2),
		palavra(verbo,Palavra3),
		palavra(artigo,Palavra4),
		palavra(nome,Palavra5).

==================================================================

Qual consulta deve-se colocar a fim de encontrar quais sentenças a
gramática pode gerar?

	?- senteca(A,B,C,D,E).
*/

%Ex 11.
/* 
Liste todas as sentenças que esta gramática pode gerar na mesma
ordem em que o Prolog as geraria.

	1 - Um criminoso come;
	2 - Um criminoso come mac lanche feliz;
	3 - Um criminoso come qualquer;
	4 - Um criminoso come qualquer mac lanche feliz;	
	5 - Um criminoso adora;
	6 - Um criminoso adora mac lanche feliz;
	7 - Um criminoso adora qualquer;
	8 - Um criminoso adora qualquer mac lanche feliz;	
	9 - Um mac lanche feliz come criminoso;
	10 - Um mac lanche feliz come;
	11 - Um mac lanche feliz come qualquer criminoso;
	12 - Um mac lanche feliz come qualquer;
	13 - Um mac lanche feliz adora criminoso;
	14 - Um mac lanche feliz adora;
	15 - Um mac lanche feliz adora qualquer criminoso;
	16 - Um mac lanche feliz adora qualquer;
	17 - Qualquer criminoso come um;
	18 - Qualquer criminoso come um mac lanche feliz;
	19 - Qualquer criminoso come;
	20 - Qualquer criminoso come mac lanche feliz;
	21 - Qualquer criminoso adora um;
	22 - Qualquer criminoso adora um mac lanche feliz;
	23 - Qualquer criminoso adora;
	24 - Qualquer criminoso adora mac lanche feliz;
	25 - Qualquer mac lanche feliz come um criminoso;
	26 - Qualquer mac lanche feliz come um;
	27 - Qualquer mac lanche feliz come criminoso; 
	28 - Qualquer mac lanche feliz come;
	29 - Qualquer mac lanche feliz adora um criminoso;
	30 - Qualquer mac lanche feliz adora um;
	31 - Qualquer mac lanche feliz adora criminoso;
	32 - Qualquer mac lanche feliz adora.
*/	 

%Ex 12.
/*

===========ALUNOS============
	aluno(joao,poo).
	aluno(pedro,poo).
	
	aluno(maria,pl).
	aluno(rui,pl).
	aluno(manuel,pl).
	aluno(pedro,pl).
	
	aluno(rui,ed1).
============================
	
Verifique que os fatos estão presentes na Base de Conhecimento (utilize
o predicado listing).
	
	?- listing(aluno).
	aluno(joao, poo).
	aluno(pedro, poo).
	aluno(maria, pl).
	aluno(rui, pl).
	aluno(manuel, pl).
	aluno(pedro, pl).
	aluno(rui, ed1).

	true.
*/

%Ex 13.

/*
===========ALUNOS============
	aluno(joao,poo).
	aluno(pedro,poo).
	
	aluno(maria,pl).
	aluno(rui,pl).
	aluno(manuel,pl).
	aluno(pedro,pl).
	
	aluno(rui,ed1).
============================

Escreva uma consulta que verifique se joao é aluno de pl.	

	?- aluno(joao,pl).
	false.
*/

%Ex 14.

/*

===========ALUNOS============
	aluno(joao,poo).
	aluno(pedro,poo).
	
	aluno(maria,pl).
	aluno(rui,pl).
	aluno(manuel,pl).
	aluno(pedro,pl).
	
	aluno(rui,ed1).
============================

Escreva uma consulta que verifique se rui é aluno de poo.

	?- aluno(rui,poo).
	false.
*/

%Ex 15.

/*
===========ALUNOS============
	aluno(joao,poo).
	aluno(pedro,poo).
	
	aluno(maria,pl).
	aluno(rui,pl).
	aluno(manuel,pl).
	aluno(pedro,pl).
	
	aluno(rui,ed1).
============================

Escreva uma consulta que verifique se joao e maria são ambos alunos
de ed1. joao e maria são ambos alunos de ed1 se joao for aluno de ed1
e maria for aluna de ed1.

	?- aluno(joao,ed1),aluno(maria,ed1).
	false.
*/

%Ex 16.

/*
===========ALUNOS============
	aluno(joao,poo).
	aluno(pedro,poo).
	
	aluno(maria,pl).
	aluno(rui,pl).
	aluno(manuel,pl).
	aluno(pedro,pl).
	
	aluno(rui,ed1).
============================

Escreva uma consulta que permita saber quem é aluno de pl.

	?- aluno(X,pl).
	X = maria ;
	X = rui ;
	X = manuel ;
	X = pedro.
*/

%Ex 17.

/*
===========ALUNOS============
	aluno(joao,poo).
	aluno(pedro,poo).
	
	aluno(maria,pl).
	aluno(rui,pl).
	aluno(manuel,pl).
	aluno(pedro,pl).
	
	aluno(rui,ed1).
============================

Escreva uma consulta que permita saber as disciplinas em que rui é
aluno.

	?- aluno(rui,X).
	X = pl ;
	X = ed1.

*/

%Ex 18.

/*

===========ALUNOS============
	aluno(joao,poo).
	aluno(pedro,poo).
	
	aluno(maria,pl).
	aluno(rui,pl).
	aluno(manuel,pl).
	aluno(pedro,pl).
	
	aluno(rui,ed1).
	
	estuda(joao).
	estuda(maria).
	estuda(manuel).
============================


Sabendo que a aluno A faz a disciplina D se A é aluno de D e A estuda,
escreva uma consulta que lhe permita saber se maria faz pl.

	?- aluno(maria,pl),estuda(maria).
	true.
*/

%Ex 19.

/*

===========ALUNOS============
	aluno(joao,poo).
	aluno(pedro,poo).
	
	aluno(maria,pl).
	aluno(rui,pl).
	aluno(manuel,pl).
	aluno(pedro,pl).
	
	aluno(rui,ed1).
	
	estuda(joao).
	estuda(maria).
	estuda(manuel).
============================

Experimente agora a segunte consulta:
O que lhe permite esta consulta saber?

	?- aluno(X,pl), estuda(X).
	X = maria ;
	X = manuel ;
	false.
	
Essa consulta faz a seguinte afirmação: "X é aluno de pl se X estuda". 
Portanto concluímos que ambos,Maria e Manuel, fazem pl 'E' estudam.
*/

%Ex 20.

/*
===========ALUNOS============

	aluno(joao,poo).
	aluno(pedro,poo).
	
	aluno(maria,pl).
	aluno(rui,pl).
	aluno(manuel,pl).
	aluno(pedro,pl).
	
	aluno(rui,ed1).
	
	estuda(joao).
	estuda(maria).
	estuda(manuel).
	
	fazpl(X,pl):-
		aluno(X,pl),
		estuda(X).

============================

Utilizando a consulta anterior, acrescente à Base de Conhecimento o
predicado fazpl e escreva uma consulta que lhe permita saber quem
faz pl.

	?- fazpl(X,pl).
	X = maria ;
	X = manuel ;
	false.

*/


	





































