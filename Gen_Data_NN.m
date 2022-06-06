function [tr_inp1,tr_out1,te_inp1,te_out1] = Gen_Data(ke);
if  ke==1
  tr_inp1=xlsread('D:\orgenal\2021\ds1\tr_inp1.xlsx','sheet1'); %real 
  tr_out1=xlsread('D:\orgenal\2021\ds1\tr_out1.xlsx','sheet1'); %real 
  
  te_inp1=xlsread('D:\orgenal\2021\ds1\te_inp1.xlsx','sheet1'); %real 
  te_out1=xlsread('D:\orgenal\2021\ds1\te_out1.xlsx','sheet1'); %real 
elseif ke==2
  tr_inp1=xlsread('D:\orgenal\2021\ds2\tr_inp1.xlsx','sheet1');  
  tr_out1=xlsread('D:\orgenal\2021\ds2\tr_out1.xlsx','sheet1');  
  te_inp1=xlsread('D:\orgenal\2021\ds2\te_inp1.xlsx','sheet1');  
  te_out1=xlsread('D:\orgenal\2021\ds2\te_out1.xlsx','sheet1');
  elseif ke==4
  tr_inp1=xlsread('D:\orgenal\2021\ds4\tr_inp1.xlsx','sheet1');  
  tr_out1=xlsread('D:\orgenal\2021\ds4\tr_out1.xlsx','sheet1');  
  te_inp1=xlsread('D:\orgenal\2021\ds4\te_inp1.xlsx','sheet1');  
  te_out1=xlsread('D:\orgenal\2021\ds4\te_out1.xlsx','sheet1');
  
  elseif ke==5
  tr_inp1=xlsread('D:\orgenal\2021\ds5\tr_inp1.xlsx','sheet1');  
  tr_out1=xlsread('D:\orgenal\2021\ds5\tr_out1.xlsx','sheet1');  
  te_inp1=xlsread('D:\orgenal\2021\ds5\te_inp1.xlsx','sheet1');  
  te_out1=xlsread('D:\orgenal\2021\ds5\te_out1.xlsx','sheet1');
  
  
elseif ke==3
  tr_inp1=xlsread('D:\orgenal\2021\ds3\tr_inp1.xlsx','sheet1');  
  tr_out1=xlsread('D:\orgenal\2021\ds3\tr_out1.xlsx','sheet1');  
  te_inp1=xlsread('D:\orgenal\2021\ds3\te_inp1.xlsx','sheet1');  
  te_out1=xlsread('D:\orgenal\2021\ds3\te_out1.xlsx','sheet1');

end;



