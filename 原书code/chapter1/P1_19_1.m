%圆的渐开线的动画
clear                                  %清除变量
t=linspace(0,2*pi);                    %角度向量
figure                                 %创建图形窗口
plot(cos(t),sin(t),'LineWidth',2)      %画圆
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\ity/a','FontSize',16)         %加纵坐标
title('圆的渐开线的动画','FontSize',16)%加标题
grid on                                %加网格
axis equal                             %使坐标间隔相等
hold on                                %保持属性
h1=plot([1,1],[0,0],'--','LineWidth',2);%画线并取句柄
h2=plot([1,0],[0,0],'--','LineWidth',2);%画线并取句柄
dt=0.1;                                %角度间隔
t=0;                                   %起始角度
x0=1;y0=0;                             %起点坐标
pause                                  %暂停
for i=1:100                            %循环
    t=t+dt;                            %下一个角度
    x=cos(t)+t*sin(t);                 %横坐标
    y=sin(t)-t*cos(t);                 %纵坐标
    plot([x0,x],[y0,y],'LineWidth',2)  %画渐开线
    set(h1,'XData',[cos(t),x],'YData',[sin(t),y])%设置线的坐标
    set(h2,'XData',[cos(t),0],'YData',[sin(t),0])%设置线的坐标
    drawnow                            %刷新屏幕
    pause(0.1)                         %延时0.1秒
    x0=x;y0=y;                         %保存起始坐标
end                                    %结束循环

%程序结束.周群益设计
