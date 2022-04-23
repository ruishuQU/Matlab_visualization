%摆线的参变量方程和摆线形成的动画
clear                                  %清除变量
t=linspace(0,2*pi,101);                %参变量向量
x=t-sin(t);                            %摆线横坐标向量
y=1-cos(t);                            %摆线纵坐标向量
xx=cos(t);                             %圆的横坐标
yy=sin(t)+1;                           %圆的纵坐标
figure                                 %创建图形窗口
plot([-1,7.3],[0,0],'LineWidth',2)     %画水平线
hold on                                %保持属性
plot(xx,yy,'--','LineWidth',2)         %画圆
plot([0,0],[0,1],'--o','LineWidth',2)  %画半径
plot(x,y,'--','LineWidth',2)           %画摆线
title('摆线形成的动画','FontSize',16)  %加标题
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\ity/a','FontSize',16)         %加纵坐标
grid on                                %加网格
axis equal                             %使坐标间隔相等
h1=plot(xx,yy,'r','LineWidth',2);      %画圆并取句柄
h2=plot([0,0],[0,1],'-o','LineWidth',2);%画半径并取句柄
h=text(0,0,'\itP','FontSize',16);      %标记动点并取句柄
for i=1:length(t)                      %按参变量循环
    if i==1|i==35|i==52|i==75,pause,end%判断暂停
    set(h1,'XData',xx+t(i))            %设置圆的横坐标演示动画
    set(h2,'XData',[x(i),t(i)],'YData',[y(i),1])%设置半径坐标
    set(h,'Position',[x(i),y(i)])      %更新字母的坐标
    if i>1                             %如果不是初始状态
        plot([x(i-1),x(i)],[y(i-1),y(i)],'LineWidth',2)%摆线动画
    end                                %结束条件
    pause(0.1)                         %延时
%    drawnow                            %刷新屏幕
end                                    %结束循环

%程序结束.周群益设计
