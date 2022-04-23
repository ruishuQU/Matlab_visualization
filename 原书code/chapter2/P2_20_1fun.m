%函数和渐近线的函数文件
function fun(f,t)
syms x                                 %定义符号变量
k1=limit(f/x,x,Inf)                    %符号斜率
b1=limit(f-k1*x,x,Inf)                 %符号截距
k2=limit(f/x,x,-Inf)                   %符号斜率
b2=limit(f-k2*x,x,-Inf)                %符号截距

xm=4;                                  %最大横坐标
x=-xm:0.1:xm;                          %自变量向量
f=inline(f);                           %符号函数转化为内线函数
%y=f(x);                                %函数向量
figure                                 %创建图形窗口
plot(x,f(x),'LineWidth',2)             %画曲线
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itf','FontSize',16)           %加纵坐标
title([t,'函数和渐近线'],'FontSize',16)%加标题
grid on                                %加网格
y1=double(k1*x+b1);                    %渐近线的纵坐标
y2=double(k2*x+b2);                    %渐近线的纵坐标
hold on                                %保持属性
plot(x,y1,'--r',x,y2,'--m','LineWidth',2)%画渐近线

%程序结束.周群益设计
