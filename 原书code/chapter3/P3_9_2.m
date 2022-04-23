%星形线的参变量方程和切线
clear                                  %清除变量
t=linspace(0,2*pi);                    %参变量向量
x=cos(t).^3;                           %横坐标向量
y=sin(t).^3;                           %纵坐标向量
figure                                 %创建图形窗口
plot(x,y,'LineWidth',2)                %画曲线
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\ity/a','FontSize',16)         %加纵坐标
title('星形线和切线','FontSize',16)    %加标题
grid on                                %加网格
axis equal                             %使坐标间隔相等
hold on                                %保持属性
h0=plot(1,0,'go','LineWidth',2);       %画切点并取句柄
h1=plot([1,0],[0,0],'-*r','LineWidth',2);%画切线并取句柄
pause                                  %暂停
for i=1:length(t)                      %按参变量循环
    x0=x(i);                           %取切点横坐标
    y0=y(i);                           %取切点纵坐标
    set(h0,'XData',x0,'YData',y0)      %更新切点坐标
    x0=cos(t(i));                      %切线与横轴交点坐标
    y0=sin(t(i));                      %切线与纵轴交点坐标
    set(h1,'XData',[x0,0],'YData',[0,y0])%更新切线坐标演示动画
    drawnow                            %刷新屏幕
    pause(0.1)                         %延时
    if i==15,pause,end                 %判断暂停
end                                    %结束循环

%程序结束.周群益设计
