/*???????*/

proc contents data=criteo.train out=criteo.pp;
run;

%let inputs=I1 I2 I3 I4 I5 I6 I7 I8 I9 I10 I11
			I12 I13 Id Label;

%put &inputs;

ods html FILE='data_explorasion.htm' style=HTMLBlue;

proc means data=criteo.train n nmiss mean min max;
	var &inputs;
run;

ods html close;
