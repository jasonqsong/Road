function [delta,t1,t2] = calparam(selectdata)
x = selectdata;
x=smooth(x,10);
[a,b]=max(x); %first max
index=[];
val = [];
preb = 1;
preb=preb+b-1;
index=[index,preb];
val=[val,a];
x=x(b:length(x));
[a,b]=min(x); %first min
preb=preb+b-1;
index=[index,preb];
val=[val,a];
x=x(b:length(x));
[a,b]=max(x);%second max
preb=preb+b-1;
index=[index,preb];
val=[val,a];
x=x(b:length(x));
[a,b]=min(x);%second min
preb=preb+b-1;
index=[index,preb];
val=[val,a];
x=x(b:length(x));
delta = (val(1)-val(2))/(val(3)-val(4));
t1 = (index(3)-index(1));
t2 = index(4)-index(2);
