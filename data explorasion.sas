/* create library Criteo */
libname Criteo 'C:\Users\Ivan.Liuyanfeng\Desktop\Data_Mining_Work_Space\Kaggle-Criteo';

/* redirect log to handle the log limitations */
proc printto log="C:\Users\Ivan.Liuyanfeng\Desktop\Data_Mining_Work_Space\Kaggle-Criteo\cat_var.log";
run;

/* Closes output window */
ods listing close;

/* obtain data contents */
ods html body='C:\Users\Ivan.Liuyanfeng\Desktop\Data_Mining_Work_Space\Kaggle-Criteo\contents.html';
PROC CONTENTS DATA=criteo._all_;
run;

PROC PRINT DATA=CRITEO.TEST(OBS=50);
RUN;

PROC PRINT DATA=CRITEO.TRAIN(OBS=50);
RUN;
ods html close;

/* Obtain all numeric variables */
proc contents data=criteo.train out=criteo.pp;
run;

%let inputs=I1 I2 I3 I4 I5 I6 I7 I8 I9 I10 I11
			I12 I13 Id Label;
%put &inputs;

ods html body='C:\Users\Ivan.Liuyanfeng\Desktop\Data_Mining_Work_Space\Kaggle-Criteo\de_num_var.html';
proc means data=criteo.train n nmiss mean min max;
	var &inputs;
run;
ods html close;

/* Obtain all categorical variables */
ods html body='C:\Users\Ivan.Liuyanfeng\Desktop\Data_Mining_Work_Space\Kaggle-Criteo\de_cat_var.html';
proc freq data=criteo.train;
	tables C1 - C26;
run;
ods html close;
