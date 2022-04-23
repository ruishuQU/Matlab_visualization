%复合函数和导数
clear                                  %清除变量
xm=5;                                  %最大横坐标
dx=0.01;                               %间隔
x=0:dx:xm;                             %横坐标向量
u=(x-1).*(x-2)./(x-3)./(x-4);          %被开方向量
y=sign(u).*abs(u).^(1/3);              %函数向量
v=1./(x-1)+1./(x-2)-1./(x-3)-1./(x-4); %对数函数的导数
dy=y.*v/3;                             %复合函数的导数
w=-1./(x-1).^2-1./(x-2).^2+1./(x-3).^2+1./(x-4).^2;%对数函数的二阶导数
d2y=dy.*v/3+y.*w/3;                    %复合函数的二阶导数
i=1:5:length(x);                       %下标向量
figure                                 %创建图形窗口
%plot(x,y,x,dy,'--+',x,d2y,'-.x','LineWidth',2)%画曲线
plot(x(i),y(i),x(i),dy(i),'--+',x(i),d2y(i),'-.x','LineWidth',2)%画曲线
title('复合函数和导数','FontSize',16)  %加标题
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
legend('\ity','\ity\prime','\ity\prime\prime',2)%加图例
axis([0,xm,-6,6])                      %设置范围
hold on                                %保持属性
dy=diff(y)/dx;                         %求函数的数值差分
dy=[dy(1),(dy(1:end-1)+dy(2:end))/2,dy(end)];%求平均值表示导数
d2y=diff(dy)/dx;                       %求导数的数值差分
d2y=[d2y(1),(d2y(1:end-1)+d2y(2:end))/2,d2y(end)];%求平均值表示二阶导数
%plot(x,dy,'o',x,d2y,'s','LineWidth',2) %画曲线
plot(x(i),dy(i),'o',x(i),d2y(i),'s','LineWidth',2)%画曲线
text(0,-4,'圈表示数值导数,方形表示二阶数值导数','FontSize',16)%加说明

%程序结束.周群益设计

