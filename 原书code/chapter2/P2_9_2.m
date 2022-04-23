%根函数在无限远处的极限
clear                                  %清除变量
syms x                                 %定义符号变量
f=x*(sqrt(x^2+2*x)-2*sqrt(x^2+x)+x)    %符号函数
l=limit(f,x,inf)                       %符号极限
l=double(l)                            %化为数值

f=inline(f);                           %符号函数转化为内线函数
xm=1000;                               %最大横坐标
x=1:0.1:xm;                            %自变量向量
figure                                 %创建图形窗口
plot(x,f(x),'LineWidth',2)             %画曲线
title('根函数在无限远处的极限','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
grid on                                %加网格
hold on                                %保持属性
plot(xm,l,'o')                         %画极限
text(xm,l,num2str(l),'FontSize',16)    %标记极限

%程序结束.周群益设计
