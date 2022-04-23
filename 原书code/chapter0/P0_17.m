%极坐标曲线的画法
clear                                  %清除变量
t=linspace(0,4*pi,1000);               %极角向量
r=t;                                   %极径向量
figure                                 %创建图形窗口
polar(t,r)                             %画极坐标曲线
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\ity/a','FontSize',16)         %加纵坐标
title('阿基米德螺线','FontSize',16)    %加标题
grid on                                %加网格
x=r.*cos(t);                           %横坐标向量
y=r.*sin(t);                           %纵坐标向量
%[x,y]=pol2cart(t,r);                   %直角坐标向量
hold on                                %保持属性
comet(x,y)                             %演示彗星式曲线动画

%程序结束.周群益设计
