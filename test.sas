PROC IMPORT OUT= CRITEO.TEST 
            DATAFILE= "C:\Users\Ivan.Liuyanfeng\Desktop\Data_Mining_Work
_Space\Kaggle-Criteo\test.csv" 
            DBMS=CSV REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
