libname path "C:\Users\arobe\OneDrive\Documents\SAS_Data";
data mydataRMD;
	input #1 @1(Rat) ($1.)
			 @3(Time) ($2.)
			 @6(y) (2.);

datalines;
1 A 10
1 B 09
1 C 08
2 A 11
2 B 07
2 C 08
3 A 12
3 B 10
3 C 08
4 A 11
4 B 04
4 C 03
5 A 11
5 B 10
5 C 09
6 A 13
6 B 06
6 C 05
7 A 11
7 B 06
7 C 06
;
proc glm data=mydataRMD;
	class Rat Time;
	model y = Time Rat(Time) /nouni;
	means model /tukey;
		repeated Test 3 contrast (3) / summary;
	run;
		
