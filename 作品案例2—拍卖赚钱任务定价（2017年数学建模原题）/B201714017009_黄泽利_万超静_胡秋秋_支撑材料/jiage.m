
clc
clear
figure;
info = shapeinfo('�㶫ʡ�м������滮.shp')
x= shaperead('�㶫ʡ�м������滮.shp');
mapshow(x);
hold on
x=xlsread('���������');
xi=x(1:318,1:2);  
x1=xi(:,2);
x2=xi(:,1);
xx=x(319:617,1:2);
xx1=xx(:,2);
xx2=xx(:,1);
xxx=x(618:835,1:2);
xxx1=xxx(:,2);
xxx2=xxx(:,1);
zzz1=[23.18055,113.295992554];
zzz2=[23.0429823954,113.7668916016]
zzz3=[23.028 113.12 ]
zzz4=[ 22.60 113.95 ];
%��һ��Բ
alpha=0:pi/500:2*pi;%�Ƕ�[0,2*pi]
R=0.08;%�뾶
xr=R*cos(alpha)+zzz1(:,2);
yr=R*sin(alpha)+zzz1(:,1);
alpha=0:pi/500:2*pi;%�Ƕ�[0,2*pi]
R=0.135;%�뾶
xr1=R*cos(alpha)+zzz1(:,2);
yr1=R*sin(alpha)+zzz1(:,1);
%�ڶ���Բ
alpha=0:pi/500:2*pi;%�Ƕ�[0,2*pi]
R=0.03;%�뾶
xr21=R*cos(alpha)+zzz2(:,2);
yr21=R*sin(alpha)+zzz2(:,1);
alpha=0:pi/500:2*pi;%�Ƕ�[0,2*pi]
R=0.10;%�뾶
xr22=R*cos(alpha)+zzz2(:,2);
yr22=R*sin(alpha)+zzz2(:,1);
%������Բ
alpha=0:pi/500:2*pi;%�Ƕ�[0,2*pi]
R=0.04;%�뾶
xr31=R*cos(alpha)+zzz3(:,2);
yr31=R*sin(alpha)+zzz3(:,1);
alpha=0:pi/500:2*pi;%�Ƕ�[0,2*pi]
R=0.08;%�뾶
xr32=R*cos(alpha)+zzz3(:,2);
yr32=R*sin(alpha)+zzz3(:,1);
%������Բ
alpha=0:pi/500:2*pi;%�Ƕ�[0,2*pi]
R=0.12;%�뾶
xr41=R*cos(alpha)+zzz4(:,2);
yr41=R*sin(alpha)+zzz4(:,1);
alpha=0:pi/500:2*pi;%�Ƕ�[0,2*pi]
R=0.23;%�뾶
xr42=R*cos(alpha)+zzz4(:,2);
yr42=R*sin(alpha)+zzz4(:,1);
plot(x1,x2,'B*',xx1,xx2,'R+',xxx1,xxx2,'ko',xr,yr,'R-',xr1,yr1,'R-')
hold on 
plot(xr21,yr21,'R-',xr22,yr22,'R-',xr31,yr31,'R-',xr32,yr32,'R-');
hold on 
plot( xr41,yr41,'R-',xr42,yr42,'R-'  );










