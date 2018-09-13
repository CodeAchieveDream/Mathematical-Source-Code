
clc;
clear;
close all;

pd=[];
p=[16932 	11452 	6436 	2740 	6645	4893 	7959 	1971 	3159	425  ];
b=[ 905  	853  	418  	32  	255  	70 	324 	14 	57 	3    ]; 
 
for i=1:length(p)
 people_x=1000*rand(1,p(i));
 people_y=1000*rand(1,p(i));

 bike_x=1000*rand(1,b(i));
 bike_y=1000*rand(1,b(i));
 
for j=1:p(i)
    s=[bike_x-people_x(j); bike_y-people_y(j)];
    s=s.^2;
    s=sqrt(sum(s));
    x=min(s);
    pd=[ pd min(s)];
end
pd=mean(pd');
disp(pd)
pd=[];
figure;
plot(people_x,people_y,'k+',bike_x,bike_y,'Ko')
axis([0,1000,0,1000]);
end






