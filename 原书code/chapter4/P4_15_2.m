%曳物线的面积
clear                                  %清除变量
syms y                                 %定义符号变量
x=log((1+sqrt(1-y^2))/y)-sqrt(1-y^2);  %符号反函数
s=2*int(x,0,1)                         %求符号积分
f=inline(x);                           %转化为内线函数

syms t                                 %定义符号变量
x=log(cot(t/2))-cos(t);                %第1组参数方程的横坐标
y=sin(t);                              %第1组参数方程的纵坐标
ds=y*diff(x);                          %被积函数
s=int(ds,pi,0)                         %积分

x=t-tanh(t);                           %第2组参数方程的横坐标
y=sech(t);                             %第2组参数方程的纵坐标
ds=(x*diff(y)-y*diff(x))/2;            %被积函数
s=int(ds,Inf,-Inf)                     %积分
s=double(s);                           %化为数值

dy=0.01;                               %数值间隔
y=0:dy:1;                              %纵坐标向量
y(1)=eps;                              %0改为小量
x=f(y);                                %横坐标向量
figure                                 %创建图形窗口
fill([x,-fliplr(x)],[y,fliplr(y)],'y') %画填色图
title('曳物线的面积','FontSize',16)    %加标题
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\ity/a','FontSize',16)         %加纵坐标
grid on                                %加网格
text(0,0,['\itS/a\rm^2=',num2str(s)],'FontSize',16)%显示面积
axis([-3,3,0,1])                       %设置曲线范围
axis equal                             %使坐标间隔相等

%程序结束.周群益设计
