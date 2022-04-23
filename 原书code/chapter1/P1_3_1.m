%取整函数
clear                                  %清除变量
xm=4;                                  %最大自变量
x=-xm:0.1:xm;                         %自变量向量
y=floor(x);                            %函数向量
y(x==y)=nan;                           %整数改为非数
figure                                 %创建图形窗口
plot(x,x,'--',x,y,'LineWidth',2)       %画线
xx=-xm:xm-1;                           %整数向量
hold on                                %保持属性
plot(xx,xx,'.',xm,xm,'.','MarkerSize',24)%画点
plot(xx+1,xx,'o')                      %画圈
title('向下取整函数','FontSize',16)    %加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
grid on                                %加网格
axis([-xm-1,xm+1,-xm-1,xm+1])          %设置曲线范围

y=ceil(x);                             %函数向量
y(x==y)=nan;                           %整数改为非数
figure                                 %创建图形窗口
plot(x,x,'--',x,y,'LineWidth',2)       %画线
xx=-xm+1:xm;                           %整数向量
hold on                                %保持属性
plot(xx,xx,'.',-xm,-xm,'.','MarkerSize',24)%画点
plot(xx-1,xx,'o')                      %画圈
title('向上取整函数','FontSize',16)    %加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
grid on                                %加网格
axis([-xm-1,xm+1,-xm-1,xm+1])          %设置曲线范围

x=0:0.01:xm;                           %自变量向量
y=fix(x);                              %函数向量
y(x==y)=nan;                           %整数改为非数
figure                                 %创建图形窗口
plot(-x,-x,'--',x,x,'b--',-x,-y,x,y,'LineWidth',2)%画线
xx=0:xm-1;                             %整数向量
hold on                                %保持属性
plot(xx+1,xx+1,'.',-xx-1,-xx-1,'.',0,0,'.','MarkerSize',24)%画点
plot(xx+1,xx,'o',-xx-1,-xx,'o')        %画圈
title('向零取整函数','FontSize',16)    %加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
grid on                                %加网格
axis([-xm-1,xm+1,-xm-1,xm+1])          %设置曲线范围

%程序结束.周群益设计
