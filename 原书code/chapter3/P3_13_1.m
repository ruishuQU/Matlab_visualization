%验证罗尔中值定理
clear                                  %清除变量
syms x                                 %定义符号变量
y=log(sin(x))                          %符号函数
dy=diff(y)                             %求导数
x0=solve(dy)                           %求零点横坐标
f=inline(y);                           %化为内线函数
x0=double(x0);                         %化为数值
y0=f(x0);                              %求函数值
xm1=pi/6;                              %最小横坐标
xm2=5*pi/6;                            %最大横坐标
x=linspace(xm1,xm2);                   %横坐标向量
figure                                 %创建图形窗口
plot(x,f(x),x0,y0,'o','LineWidth',2)   %画曲线
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
title('验证罗尔中值定理','FontSize',16)%加标题
grid on                                %加网格
text(x0,y0,[num2str(x0),',',num2str(y0)],'FontSize',16)%加说明
hold on                                %保持属性
x=[xm1,xm2];                           %起点和终点横坐标
y=f(x);                                %起点和终点纵坐标
stem(x,y,'--')                         %画杆线
text(x,y,num2str(y'),'FontSize',16)    %标记纵坐标

%程序结束.周群益设计
