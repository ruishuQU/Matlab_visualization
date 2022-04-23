%无穷积分的函数文件
function fun(n)
syms x                                 %定义符号变量
yn=x^(n/2)/(1+x^(n+2));                %被积函数
jn=int(yn,0,Inf)                       %求符号积分
jn=double(jn);                         %化为数值
f=inline(yn);                          %转化为内线函数
xm=10;                                 %最大横坐标
dx=0.1;                                %数值间隔
x=0:dx:xm;                             %横坐标向量
x(1)=eps;                              %0改为小量
yn=f(x);                               %横坐标向量
figure                                 %创建图形窗口
fill([x,xm,0],[yn,0,0],'y')            %画填色图
%plot(x,yn,'LineWidth',2)               %画曲线
title(['无穷积分(\itn\rm=',num2str(n),')'],'FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
grid on                                %加网格
text(0,0,['\itJ_n\rm=',num2str(jn)],'FontSize',16)%显示初始坐标

%程序结束.周群益设计
