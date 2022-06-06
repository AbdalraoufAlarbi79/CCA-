%
clear all; close all; 
k=2;
[tr_inp1,tr_out1,te_inp1,lab] = Gen_Data_NN(5);
x=1;y=1;
for i=1:size(tr_inp1,1)
    if tr_out1(i,1)==1;
     data_org1(x,:)= tr_inp1(i,:); x=x+1; 
    else
     data_org2(y,:)= tr_inp1(i,:); y=y+1;
    end;
end;
dim1= size(data_org1,1);  
dim2= size(data_org2,1);
  %}
for ite=1:10
[IDX1] = kmeans (data_org1,k); % kmedoids    kmeans
[IDX2] = kmeans (data_org2,k); 
x=1;y=1;C1_k1=[]; C1_k2=[];  C2_k1=[]; C2_k2=[];
data_org11=[];data_org12=[]; data_org21=[];data_org22=[];
for i=1:size(data_org1,1)
    if IDX1(i,1)==1;
     data_org11(x,:)= data_org1(i,:); C1_k1(x,3)=i;  x=x+1;
    else
     data_org12(y,:)= data_org1(i,:); C1_k2(y,3)=i;  y=y+1;
    end;
end;
x=1;y=1;
for i=1:size(data_org2,1)
    if IDX2(i,1)==1;
       data_org21(x,:)= data_org2(i,:); C2_k1(x,3)=i; x=x+1;
    else
       data_org22(y,:)= data_org2(i,:); C2_k2(y,3)=i; y=y+1;
    end;
end;
DM11=Dis_F(data_org11);DM12=Dis_F(data_org12);  
DM21=Dis_F(data_org21);DM22=Dis_F(data_org22);  
dim11= size(data_org11,1); dim12= size(data_org12,1);  
dim21= size(data_org21,1); dim22= size(data_org22,1); 
for i=1:dim11;
   C1_k1(i,1)=sum(DM11(i,:));
 end;
 for i=1:dim12;
   C1_k2(i,1)=sum(DM12(i,:));
 end;
 for i=1:dim21;
   C2_k1(i,1)=sum(DM21(i,:));
 end;
 for i=1:dim22;
   C2_k2(i,1)=sum(DM22(i,:));
 end;
[min11_c1,pos11_c1] = min(C1_k1(:,1));%center
C1_k1(pos11_c1,1)   =max(C1_k1(:,1))+1;
[min11_c2,pos11_c2] = min(C1_k1(:,1));%center
C1_k1(pos11_c2,1)   =max(C1_k1(:,1))+1;
[min11_c3,pos11_c3] = min(C1_k1(:,1));%center
C1_k1(pos11_c3,1)   =max(C1_k1(:,1))+1;
[min11_c4,pos11_c4] = min(C1_k1(:,1));%center
C1_k1(pos11_c4,1)   =max(C1_k1(:,1))+1;
[min11_c5,pos11_c5] = min(C1_k1(:,1));%center




[min12_c1,pos12_c1] = min(C1_k2(:,1));%center
C1_k2(pos12_c1,1)   = max(C1_k2(:,1))+1;
[min12_c2,pos12_c2] = min(C1_k2(:,1));%center
C1_k2(pos12_c2,1)   = max(C1_k2(:,1))+1;
[min12_c3,pos12_c3] = min(C1_k2(:,1));%center
C1_k2(pos12_c3,1)   = max(C1_k2(:,1))+1;
[min12_c4,pos12_c4] = min(C1_k2(:,1));%center
C1_k2(pos12_c4,1)   = max(C1_k2(:,1))+1;
[min12_c5,pos12_c5] = min(C1_k2(:,1));%center




[min21_c1,pos21_c1]= min(C2_k1(:,1));%center
C2_k1(pos21_c1,1)  = max(C2_k1(:,1))+1;
[min21_c2,pos21_c2]= min(C2_k1(:,1));%center
C2_k1(pos21_c2,1)  = max(C2_k1(:,1))+1;
[min21_c3,pos21_c3]= min(C2_k1(:,1));%center
C2_k1(pos21_c3,1)  = max(C2_k1(:,1))+1;
[min21_c4,pos21_c4]= min(C2_k1(:,1));%center
C2_k1(pos21_c4,1)  = max(C2_k1(:,1))+1;
[min21_c5,pos21_c5]= min(C2_k1(:,1));%center





[min22_c1,pos22_c1]= min(C2_k2(:,1));%center
C2_k2(pos22_c1,1)  = max(C2_k2(:,1))+1;
[min22_c2,pos22_c2]= min(C2_k2(:,1));%center
C2_k2(pos22_c2,1)  = max(C2_k2(:,1))+1;
[min22_c3,pos22_c3]= min(C2_k2(:,1));%center
C2_k2(pos22_c3,1)  = max(C2_k2(:,1))+1;
[min22_c4,pos22_c4]= min(C2_k2(:,1));%center
C2_k2(pos22_c4,1)  = max(C2_k2(:,1))+1;
[min22_c5,pos22_c5]= min(C2_k2(:,1));%center


for i=1:size(te_inp1,1)
 %center
 dis1(1,1)  =   pdist2(te_inp1(i,:),data_org1(C1_k1(pos11_c1,3),:),'euclidean'); 
 dis1(1,2)  =   pdist2(te_inp1(i,:),data_org1(C1_k1(pos11_c2,3),:),'euclidean'); 
 dis1(1,3)  =   pdist2(te_inp1(i,:),data_org1(C1_k1(pos11_c3,3),:),'euclidean'); 
 dis1(1,4)  =   pdist2(te_inp1(i,:),data_org1(C1_k1(pos11_c4,3),:),'euclidean'); 
 dis1(1,5)  =   pdist2(te_inp1(i,:),data_org1(C1_k1(pos11_c5,3),:),'euclidean'); 
 dis1(1,6)  =   (dis1(1,1)+dis1(1,2)+dis1(1,3) +dis1(1,4)+dis1(1,5))/5

 dis1(2,1)  =   pdist2(te_inp1(i,:),data_org1(C1_k2(pos12_c1,3),:),'euclidean');
 dis1(2,2)  =   pdist2(te_inp1(i,:),data_org1(C1_k2(pos12_c2,3),:),'euclidean');
 dis1(2,3)  =   pdist2(te_inp1(i,:),data_org1(C1_k2(pos12_c3,3),:),'euclidean');
 dis1(2,4)  =   pdist2(te_inp1(i,:),data_org1(C1_k2(pos12_c4,3),:),'euclidean');
 dis1(2,5)  =   pdist2(te_inp1(i,:),data_org1(C1_k2(pos12_c5,3),:),'euclidean');
 dis1(2,6)  =   (dis1(2,1)+dis1(2,2)+dis1(2,3) +dis1(2,4)+dis1(2,5))/5
 
 dis1(3,1)  =   pdist2(te_inp1(i,:),data_org2(C2_k1(pos21_c1,3),:),'euclidean'); 
 dis1(3,2)  =   pdist2(te_inp1(i,:),data_org2(C2_k1(pos21_c2,3),:),'euclidean'); 
 dis1(3,3)  =   pdist2(te_inp1(i,:),data_org2(C2_k1(pos21_c3,3),:),'euclidean'); 
 dis1(3,4)  =   pdist2(te_inp1(i,:),data_org2(C2_k1(pos21_c4,3),:),'euclidean'); 
 dis1(3,5)  =   pdist2(te_inp1(i,:),data_org2(C2_k1(pos21_c5,3),:),'euclidean'); 
 dis1(3,6)  =   (dis1(3,1)+dis1(3,2)+dis1(3,3) +dis1(3,4)+dis1(3,5))/5 
 
 dis1(4,1)  =   pdist2(te_inp1(i,:),data_org2(C2_k2(pos22_c1,3),:),'euclidean');
 dis1(4,2)  =   pdist2(te_inp1(i,:),data_org2(C2_k2(pos22_c2,3),:),'euclidean');
 dis1(4,3)  =   pdist2(te_inp1(i,:),data_org2(C2_k2(pos22_c3,3),:),'euclidean');
 dis1(4,4)  =   pdist2(te_inp1(i,:),data_org2(C2_k2(pos22_c4,3),:),'euclidean');
 dis1(4,5)  =   pdist2(te_inp1(i,:),data_org2(C2_k2(pos22_c5,3),:),'euclidean');
 dis1(4,6)  =   (dis1(4,1)+dis1(4,2)+dis1(4,3) +dis1(4,4)+dis1(4,5))/5

 vclas1=(dis1(1,6)+dis1(2,6))/2
 vclas2=(dis1(3,6)+dis1(4,6))/2
 if vclas1<vclas2    
   lab(i,2)=1;
 else
   lab(i,2)=0;
 end;
  end;
 diff_ce(:,1)=abs(lab(:,1)-lab(:,2)) ; 
num1_ce=sum(diff_ce==0); num2_ce=sum(diff_ce==1);
accu_ce(ite,1)=num1_ce/size(lab,1);
end;
acc1_ce=max(accu_ce(:,1));


figure;    hold on 
for i=1:size(data_org11)
     plot(data_org11(i, 1),     data_org11(i,2),'b-O');
end;
for i=1:size(data_org12)
     plot(data_org12(i, 1),     data_org12(i,2),'g-O');
end;
for i=1:size(data_org21)
     plot(data_org21(i, 1),     data_org21(i,2),'r-O');
end;
for i=1:size(data_org22)
     plot(data_org22(i, 1),     data_org22(i,2),'m-O');
end;
%{
plot(data_org1(C1_k1(pos11_c,3),1), data_org1(C1_k1(pos11_c,3),2),'r-+');
plot(data_org1(C1_k2(pos12_c,3),1), data_org1(C1_k2(pos12_c,3),2),'r-+');
plot(data_org2(C2_k1(pos21_c,3),1), data_org2(C2_k1(pos21_c,3),2),'k-*');
plot(data_org2(C2_k2(pos22_c,3),1), data_org2(C2_k2(pos22_c,3),2),'k-*');


%}

