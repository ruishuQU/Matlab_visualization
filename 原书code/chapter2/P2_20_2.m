%隐函数曲线和渐近线
clear                                  %清除变量
tm=20;                                 %最大参变量
dt=0.01;                               %参变量间隔
t=-tm:dt:tm;                           %参变量向量
x=3*t./(1+t.^3);                       %横坐标向量
y=x.*t;                                %纵坐标向量
% y=3*t./(1+t.^3);                       %纵坐标向量
% x=y.*t;                                %横坐标向量
figure                                 %创建图形窗口
plot(x,y,'LineWidth',2)                %画参变量方程曲线
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\ity/a','FontSize',16)         %加纵坐标
title('叶形线的参变量方程和渐近线','FontSize',16)%加标题
grid on                                %加网格
axis equal                             %使坐标间隔相等
rm=2;                                  %最大横坐标
axis([-1,1,-1,1]*rm)                   %设置曲线范围
hold on                                %保持属性
plot([-rm,rm],-[-rm,rm]-1,'--','LineWidth',2)%画渐近线
comet(x,y)                             %演示彗星曲线
pause                                  %暂停
t=linspace(0,pi,1000);                 %极角向量
r=3*sin(t).*cos(t)./(cos(t).^3+sin(t).^3);%极径向量
x=r.*cos(t);                           %横坐标向量
y=r.*sin(t);                           %纵坐标向量
plot(x,y,'r','LineWidth',2)            %画极坐标方程曲线
title('叶形线的极坐标方程和渐近线','FontSize',16)%修改标题
comet(x,y)                             %演示彗星曲线
pause                                  %暂停
r=-rm:0.01:rm;                         %坐标向量
[X,Y]=meshgrid(r);                     %坐标矩阵
F=X.^3+Y.^3-3*X.*Y;                    %二元函数
title('叶形线的零值等高线和渐近线','FontSize',16)%修改标题
contour(X,Y,F,[0,0],'k')               %画零值线
pause                                  %暂停
syms x y                               %定义符号变量
f=x^3+y^3-3*x*y;                       %二元符号函数
ezplot(f)                              %用简易画图指令画隐函数曲线

%程序结束.周群益设计
