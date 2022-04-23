%一阶微分方程组的通解
clear                            %清除变量
t0=(0:10:350)*pi/180;            %起点角度
x0=cos(t0);                      %起点横坐标
y0=sin(t0);                      %纵坐标
c=x0.*(1-2*(y0./x0).^3).^(1/2);  %起点常数
xm=2.5;                          %最大横坐标
x=-xm:0.01:xm;                   %横坐标向量
ym=2;                            %最大纵坐标
y=-ym:0.01:ym;                   %纵坐标向量
[X,Y]=meshgrid(x,y);             %坐标矩阵
C=X.*(1-2*(Y./X).^3).^(1/2);     %常数矩阵
figure                           %创建图形窗口
contour(X,Y,C,c)                 %画等值线
xlabel('\itx','FontSize',16)     %加横坐标
ylabel('\ity','FontSize',16)     %加纵坐标
title('一阶微分方程的通解','FontSize',16)%加标题
grid on                          %加网格
axis equal                       %使坐标间隔相等
dY=X.^3+Y.^3;                    %dy分量
dX=3*X.*Y.^2;                    %dx分量
hold on                          %保持属性
streamline(X,Y,dX,dY,x0,y0)      %画正方向流线族
streamline(X,Y,-dX,-dY,x0,y0)    %画反方向流线族
dy0=x0.^3+y0.^3;                 %起点的dy分量
dx0=3*x0.*y0.^2;                 %起点的dx分量
quiver(x0,y0,dx0,dy0,'r','LineWidth',2)%画箭头
legend('等值法解析解','流线法数值解',2)%加图例
pause                            %暂停
[X,C]=meshgrid(x,c);             %横坐标和常数矩阵
Y=(1-(C./X).^2)/2;               %被开方数
Y=sign(Y).*abs(Y).^(1/3).*X;     %函数值
plot(x,Y,'.')                    %画曲线族
axis([-xm,xm,-ym,ym])            %设置曲线范围

%程序结束.周群益设计
