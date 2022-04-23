%调制函数
clear                                  %清除变量
x=-1:0.005:1;                          %自变量向量
y0=sqrt(1-x.^2);                       %调制函数
y1=sin(pi./x);                         %被调制函数
figure                                 %创建图形窗口
plot(x,y1,'LineWidth',2)               %画线
title('反比正弦函数','FontSize',16)    %加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
grid on                                %加网格
figure                                 %创建图形窗口
plot(x,y0.*y1,x,y0,'--',x,-y0,'--','LineWidth',2)%画线
title('调制在单位圆内的函数','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
grid on                                %加网格
axis equal                             %使坐标间隔相等

%程序结束.周群益设计
