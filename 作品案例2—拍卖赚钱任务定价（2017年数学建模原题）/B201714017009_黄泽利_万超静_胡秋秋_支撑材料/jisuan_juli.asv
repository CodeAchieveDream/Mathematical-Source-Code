clc;
clear;

x=[
23.18055      113.2959926
23.0429824	113.7668916
23.028	        113.12
22.6	          113.95
];   %圆心的坐标

R=[
0.08	0.03	0.04	0.12
0.135	0.1	0.08	0.23
];  % 半径的坐标

y=xlsread('任务的坐标');
score=xlsread('任务的价格');


for i=1:4
    xx=y-x(i,:);
    xx=abs(xx);
    x1=xx.^2;
    x1=x1';
    x2=sum(x1);
    x3=sqrt(x2);
    d{i}=x3;
end

dd=[d{1};d{2};d{3};d{4}];
[r,ind]=min(dd);

index1=[];
index2=[];
index3=[];
index4=[];
s1=0;
s2=0;
count1=0;
count2=0;

for i=1:835
if ind(i)==1
    index1=[index1 i];
    if 0<r(i)  &&  r(i)<=R(1,1)  
         if score(i,2)==0
             count1=count1+1;
            s1=s1+score(i,1);         
         end
         if score(i,2)==1
             s2=s2+score(i,1);
             count2=count2+1;
         end
    end
    if R(1,1)<r(i)  && r(i)<=R(2,1)
        
    end
    if R(2,1)<r(i)
 
    end
        
end

if ind(i)==2
    index2=[index2 i];
    if 0<r(i)  && r(i)<=R(1,2)
        
    end
    if R(1,2)<r(i)  && r(i)<=R(2,2)
    
    end
    if R(2,2)<r(i)
    
    end

end

if ind(i)==3
    index3=[index3 i];
    if 0<r(i)  && r(i)<=R(1,3)
       
            
    end
    if R(1,3)<r(i)  && r(i)<=R(2,3)
    
    end
    if R(2,3)<r(i)
    
    end
end

if ind(i)==4
    index4=[index4 i];
    if 0<r(i)  && r(i)<=R(1,4)
        
    end
    if R(1,4)<r(i)  && r(i)<=R(2,4)
    
    end
    if R(2,4)<r(i)
    
    end
end
end
count1
count2
s1./count1

s2./count2










