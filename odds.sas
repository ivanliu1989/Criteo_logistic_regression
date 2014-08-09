libname Criteo 'C:\Users\Ivan.Liuyanfeng\Desktop\Data_Mining_Work_Space\Kaggle-Criteo';

proc logistic data=lg.b_sales_inc des;
   class gender (param=ref ref='Male')
         ;
   model purchase=gender/ cl expb;
   title1 'LOGISTIC MODEL (2):  purchase=gender age income';
run;
