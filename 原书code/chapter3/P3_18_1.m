%曳抛物线和切线的长度
clear                                  %清除变量
tm=pi/2;                               %最大参变量
dt=0.01;                               %参变量间隔
t=tm:-dt:dt;                           %参变量向量
x=log(cot(t/2))-cos(t);                %横坐标向量
y=sin(t);                              %纵坐标向量
figure                                 %创建图形窗口
plot(x,y,-x,y,'LineWidth',2)           %画左右曳抛物线
title('曳抛物线和切线','FontSize',16)  %加标题
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\ity/a','FontSize',16)         %加纵坐标
grid on                                %加网格
axis equal                             %使坐标间隔相等
hold on                                %保持属性
h1=plot([0,0],[0,1],'-or','LineWidth',2);%画右边切线并取句柄
h2=plot([0,0],[0,1],'-or','LineWidth',2);%画左边切线并取句柄
pause                                  %暂停
for i=1:length(t)                      %按参变量循环
    x0=x(i);                           %取切点横坐标
    y0=y(i);                           %取切点纵坐标
    xx=x(i)+y(i)/tan(t(i));            %切线与横轴交点坐标
    set(h1,'XData',[x0,xx],'YData',[y0,0])%更新右边切线坐标演示动画
    set(h2,'XData',[-x0,-xx],'YData',[y0,0])%更新左边切线坐标演示动画
    drawnow                            %刷新屏幕
    pause(0.01)                        %延时
    if i==120,pause,end                %判断暂停
end                                    %结束循环

%程序结束.周群益设计
