%等轴双曲线切线下的面积的动画
clear                                  %清除变量
xm=5;                                  %最大横坐标
dx=0.01;                                %间隔
x=dx:dx:xm;                            %横坐标向量
y=1./x;                                %纵坐标向量
figure                                 %创建图形窗口
plot(x,y,'LineWidth',2)                %画曲线
title('等轴双曲线切线与双轴之间的面积','FontSize',16)%加标题
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\ity/a','FontSize',16)         %加纵坐标
text(xm/2,xm/2,'\itA/a\rm^2=2','FontSize',16)%标记面积
grid on                                %加网格
hold on                                %保持属性
h0=plot(x(1),y(1),'ro');               %画切点并取句柄
h1=fill([0,2*x(1),0],[2/x(1),0,0],'g');%画填色图并取句柄
axis equal                             %使坐标间隔相等
axis([0,xm,0,xm])                      %设置曲线范围
for i=1:length(x)                      %按参数循环
    set(h0,'XData',x(i),'YData',y(i))  %更新切点坐标演示动画
    set(h1,'XData',[0,2*x(i),0],'YData',[2/x(i),0,0])%更填色图坐标演示动画
    drawnow                            %刷新屏幕
    if i==1|i==200,pause,end           %判断暂停
end                                    %结束循环

%程序结束.周群益设计
