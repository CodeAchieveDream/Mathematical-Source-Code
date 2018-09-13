clc
clear;

x=xlsread('新方案的定价');
xx=x(:,1:3);
flag=x(:,4);
y=[];
sum(x(:,5))
for i=1:835
    if flag(i)==1
       y=[y;[1,0]];
    end
    if flag(i)==0
        y=[y;[0,1]];
    end
end

xx=xx';
y=y';

net=newff(minmax(xx),[6,2],{'tansig','purelin'},'trainlm');
net.trainparam.epochs=3000;
net.trainparam.goal=0.0001;
net=train(net,xx,y);

r=[x(:,1),x(:,2),x(:,5)];
r=r';
f=sim(net,r);  %
f=f';
s=[];
for i=1:835
    if f(i,1)>f(i,2)
        s=[s;1];
    end
    if f(i,1)<f(i,2)
        s=[s;0];
    end
end

count1=0;
count2=0;
for i=1:835
    if s(i)==1
        count1=count1+1;
    end
    if s(i)==0
        count2=count2+1;
    end
end
count1/835











