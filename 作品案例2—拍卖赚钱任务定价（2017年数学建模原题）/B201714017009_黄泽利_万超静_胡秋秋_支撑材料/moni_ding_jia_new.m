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

y=xlsread('任务三数据');
score=xlsread('任务的价格');

z=[];

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

for i=1:2066
if ind(i)==1
    if 0<r(i)  &&  r(i)<=R(1,1)
        z(i)=round(normrnd(66.17,0.3764,1));
    end
    if R(1,1)<r(i)  && r(i)<=R(2,1)
         p=rand(1);
         if    p<=0.2107
                  z(i)=66.5;
         end
         if    0.2107<p && p<=0.3378
             z(i)=67;
         end
             if    0.3378<=p && p<=   0.4147
             z(i)=67.5;
             end
        if    0.4147<=p && p<=0.5150  
             z(i)=68;
        end
       if   0.5150  <=p && p<=0.5518
             z(i)=68.5;
       end
         if   0.5518 <=p && p<= 0.6153
             z(i)=69; 
         end
        if   0.6153<=p && p<=     0.6421
             z(i)=69.5;    
        end
        if  0.6421<=p && p<=    0.9632
            z(i)=70; 
         end
        if  0.9632<=p && p<=1
            z(i)=70.5; 
        end
    end
    if R(2,1)<r(i)
        z(i)=71+15*(r(i)-0.1359)/(0.7392-0.1359);
    end
end

if ind(i)==2
    if 0<r(i)  && r(i)<=R(1,2)
        z(i)=round(normrnd(65,0.3764,1));
    end
    if R(1,2)<r(i)  && r(i)<=R(2,2)
    p=rand(1);
         if    p<=0.2107
                  z(i)=66.5;
         end
         if    0.2107<p && p<=0.3378
             z(i)=67;
         end
             if    0.3378<=p && p<=   0.4147
             z(i)=67.5;
             end
        if    0.4147<=p && p<=0.5150  
             z(i)=68;
        end
       if   0.5150  <=p && p<=0.5518
             z(i)=68.5;
       end
         if   0.5518 <=p && p<= 0.6153
             z(i)=69; 
         end
        if   0.6153<=p && p<=     0.6421
             z(i)=69.5;    
        end
        if  0.6421<=p && p<=    0.9632
            z(i)=70; 
         end
        if  0.9632<=p && p<=1
            z(i)=70.5; 
        end
    end
    if R(2,2)<r(i)
    z(i)=71+11*(r(i)-0.1359)/(0.7392-0.1359);
    end

end

if ind(i)==3
    if 0<r(i)  && r(i)<=R(1,3)
        z(i)=round(normrnd(66.17,0.3764,1));
            
    end
    if R(1,3)<r(i)  && r(i)<=R(2,3)
    p=rand(1);
         if    p<=0.2107
                  z(i)=66.5;
         end
         if    0.2107<p && p<=0.3378
             z(i)=67;
         end
             if    0.3378<=p && p<=   0.4147
             z(i)=67.5;
             end
        if    0.4147<=p && p<=0.5150  
             z(i)=68;
        end
       if   0.5150  <=p && p<=0.5518
             z(i)=68.5;
       end
         if   0.5518 <=p && p<= 0.6153
             z(i)=69; 
         end
        if   0.6153<=p && p<=     0.6421
             z(i)=69.5;    
        end
        if  0.6421<=p && p<=    0.9632
            z(i)=70; 
         end
        if  0.9632<=p && p<=1
            z(i)=70.5; 
        end
    end
    if R(2,3)<r(i)
    z(i)=71+15*(r(i)-0.1359)/(0.7392-0.1359);
    end
end

if ind(i)==4
    index4=[index4 i];
    if 0<r(i) && r(i)<=R(2,4)
    z(i)=round(normrnd(68,0.3764,1));
    end
    if R(2,4)<r(i)
    z(i)=71+14*(r(i)-0.1359)/(0.7392-0.1359);
    end
end
end
sum(z)
z=z';



