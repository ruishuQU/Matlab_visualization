%符号函数
clear                                  %清除变量
xm=5;                                  %最大自变量
x=-xm:0.01:xm;                         %自变量向量
y=sign(x);                             %函数向量
y(x==0)=nan;                           %零改为非数
figure                                 %创建图形窗口
plot(x,y,'LineWidth',2)                %画线
hold on                                %保持属性
plot(0,1,'o',0,-1,'o')                 %画圈
plot(0,0,'.','MarkerSize',24)          %画点
title('符号函数','FontSize',16)        %加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
grid on                                %加网格
axis([-xm,xm,-2,2])                    %曲线范围

%程序结束.周群益设计
