libname Criteo 'C:\Users\Ivan.Liuyanfeng\Desktop\Data_Mining_Work_Space\Kaggle-Criteo';

PROC CONTENTS DATA=criteo._all_;
run;

PROC PRINT DATA=CRITEO.TEST(OBS=50);
RUN;


PROC PRINT DATA=CRITEO.TRAIN(OBS=50);
RUN;
