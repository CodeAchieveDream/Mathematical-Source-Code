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

for i=1:835
if ind(i)==1
     if R(2,1)<r(i)
        index1=[index1 i];
    end
end

if ind(i)==2
     if R(2,2)<r(i)
     index2=[index2 i];
    end
end

if ind(i)==3
     if R(2,3)<r(i)
    index3=[index3 i];
    end
end
if ind(i)==4
     if R(2,4)<r(i)
    index4=[index4 i];
    end
end
end

in1=[];
in2=[];
in3=[];
in4=[];

for i=1:131
    in1=[in1 r(index1(i))];
end

for i=1:111
    in2=[in2 r(index2(i))];
end

for i=1:116
    in3=[in3 r(index3(i))];
end

for i=1:56
    in4=[in4 r(index4(i))];
end
s1=max(in1)
s2=min(in1)

max(in2)
min(in2)

ss1=max(in3)
ss2=min(in3)

max(in4)
min(in4)












