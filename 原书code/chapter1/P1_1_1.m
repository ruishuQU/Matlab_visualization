%绝对值函数的功能之一
clear                                  %清除变量
xm=3;                                  %最大自变量
x=-xm:xm;                              %自变量向量
y=abs(x);                              %函数向量
figure                                 %创建图形窗口
plot(x,x,'--',x,y,'LineWidth',2)       %画线
grid on                                %加网格
title('用绝对值函数求实数的绝对值','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标

%程序结束.周群益设计
