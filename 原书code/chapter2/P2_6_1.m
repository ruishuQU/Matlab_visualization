%有理函数的多个极限
clear                                  %清除变量
syms x                                 %定义符号变量
f=(x^2-1)/(2*x^2-x-1)                  %形成符号函数
l1=limit(f,x,0)                        %求符号极限
l1=double(l1)                          %化为数值
l2=double(limit(f,x,1))                %求符号极限
l2=double(l2)                          %化为数值
l3=limit(f,x,inf)                      %求符号极限
l3=double(l3)                          %化为数值
l4=limit(f,x,-inf)                     %求符号极限
l4=double(l4)                          %化为数值
xm=4;                                  %最大横坐标
x=-xm:0.01:xm;                         %自变量向量
f=inline(f);                           %内线函数
figure                                 %创建图形窗口
plot(x,f(x),'LineWidth',2)             %画曲线
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
title('有理函数的多个极限','FontSize',16)%加标题
grid on                                %加网格
axis([-xm,xm,-5,5])                    %设置曲线范围
x=[0,1,xm,-xm];                        %极限横坐标
y=[l1,l2,l3,l4];                       %极限值
hold on                                %保持属性
plot(x,y,'o')                          %画极限点
text(x,y,num2str(y'),'FontSize',16)    %标记极限
plot([-xm,xm],[l4,l3],'--','LineWidth',2)%画极限线

%程序结束.周群益设计
