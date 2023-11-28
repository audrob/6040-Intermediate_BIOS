Data mydata1;
	missing X;
    Input #1 @1 (Treatment) (1.)
                   @3 (Response) (4.);
          

datalines;
1 50.8
1 57.0
1 65.0
1 58.6
1 61.7
2 68.7
2 67.7
2 74.0
2 66.3
2 69.8
3 72.6
3 72.1
3 78.2
3 76.5
3 X
;

 Proc glm data=mydata1;
         class  Treatment;
          model Response = Treatment;
          Means Treatment/ lsd;
          Means Treatment;
          Run;

