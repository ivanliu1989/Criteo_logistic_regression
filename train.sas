PROC IMPORT OUT= CRITEO.train 
            DATAFILE= "C:\Users\Ivan.Liuyanfeng\Desktop\Data_Mining_Work
_Space\Kaggle-Criteo\train.csv" 
            DBMS=CSV REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
