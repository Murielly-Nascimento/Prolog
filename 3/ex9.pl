/*Ex. 9 Como o Prolog responde às seguintes consultas?

1. X = 3 * 4.
	
	?- X = 3 * 4.
	X = 3*4.

2. X is 3 * 4.

	?- X is 3 * 4.
	X = 12.

3. 4 is X.

	?- 4 is X.
	ERROR: Arguments are not sufficiently instantiated
	ERROR: In:
	ERROR:   [10] 4 is _14146
	ERROR:    [9] <user>

4. X = Y.
	
	?- X = Y.
	X = Y.	

5. 3 is 1+2.

	?- 3 is 1+2.
	true.

6. 3 is +(1,2).

	?- 3 is +(1,2).
	true.

7. 3 is X+2.

	?- 3 is X+2.
	ERROR: Arguments are not sufficiently instantiated
	ERROR: In:
	ERROR:   [10] 3 is _30944+2
	ERROR:    [9] <user>

8. X is 1+2.

	?- X is 1+2.
	X = 3.

9. 1+2 is 1+2.

	?- 1+2 is 1+2.
	false.

10. is(X,+(1,2)).

	?- is(X,+(1,2)).
	X = 3.

11. 3+2 = +(3,2).

	?- 3+2 = +(3,2).
	true.

12. * (7,5) = 7 * 5.
	
	?- * (7,5) = 7 * 5.
	ERROR: Syntax error: Operator expected
	ERROR: *
	ERROR: ** here **
	ERROR:  (7,5) = 7 * 5 . 

13. * (7,+(3,2)) = 7 * (3+2).

	?- * (7,+(3,2)) = 7 * (3+2).
	ERROR: Syntax error: Operator expected
	ERROR: *
	ERROR: ** here **
	ERROR:  (7,+(3,2)) = 7 * (3+2) . 

14. * (7,(3+2)) = 7 * (3+2).

	?- * (7,(3+2)) = 7 * (3+2).
	ERROR: Syntax error: Operator expected
	ERROR: *
	ERROR: ** here **
	ERROR:  (7,(3+2)) = 7 * (3+2) . 

15. * (7,(3+2)) = 7 * (+(3,2)).
	
	?- * (7,(3+2)) = 7 * (+(3,2)).
	ERROR: Syntax error: Operator expected
	ERROR: *
	ERROR: ** here **
	ERROR:  (7,(3+2)) = 7 * (+(3,2)) . 

*/





