%调制函数
clear                                  %清除变量
xm=10;                                 %最大自变量
x=-xm:0.01:xm;                         %自变量向量
y0=1./(1+x.^2);                        %调制函数
y1=cos(pi*x);                          %被调制函数
y2=sin(pi*x);                          %被调制函数
figure                                 %创建图形窗口
plot(x,y0.*y1,x,y0,'--',x,-y0,'--','LineWidth',2)%画线
title('调制后的余弦函数','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
grid on                                %加网格

figure                                 %创建图形窗口
plot(x,y0.*y2,x,y0,'--',x,-y0,'--','LineWidth',2)%画线
title('调制后的正弦函数','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
grid on                                %加网格

%程序结束.周群益设计
