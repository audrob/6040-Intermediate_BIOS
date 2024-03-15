data mydata1;
	input #1 @ 1(PT) ($1.)
		@ 3(Psych) ($1.)
			@ 5(Result) (4.);
datalines;
1 A 11.0
1 A 9.60
1 A 10.8
1 B 9.40
1 B 9.60
1 B 9.60
2 A 8.50
2 A 7.50
2 A 10.0
2 B 9.60
2 B 7.60
2 B 10.5
3 A 10.0
3 A 13.0
3 A 12.0
3 B 13.8
3 B 14.5
3 B 13.5
;
run;
proc glm data=mydata1;
	class PT Psych;
	model Result = PT Psych PT*Psych;
	means PT Psych / bon;
	means PT Psych PT*Psych;
run;
	
