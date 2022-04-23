%悬链线的面积和弧长
clear                                  %清除变量
syms x real                            %定义符号变量
y=cosh(x);                             %符号函数
s=int(y,0,x)                           %求面积的符号定积分
f=inline(y)                            %悬链线的内线函数
xm=2;                                  %最大横坐标
dx=0.1;                                %横坐标间隔
x=0:dx:xm;                             %横坐标向量
y=f(x);                                %悬链线的纵坐标向量
s=subs(s,'x',x);                       %悬链线的面积向量
dy=diff(y)/dx;                         %通过差分求数值导数
dy=[dy(1),(dy(1:end-1)+dy(2:end))/2,dy(end)];%求平均值
dl=sqrt(1+dy.^2);                      %被积函数
l=cumtrapz(dl)*dx;                     %用梯形法求弧长
figure                                 %创建图形窗口
plot(x,y,x,s,'x--',x,l,'o-.','LineWidth',2)%画曲线
title('悬链线的面积和弧长','FontSize',16)%加标题
xlabel('\itx/a','FontSize',16)         %加横坐标
grid on                                %加网格
hold on                                %保持属性
fill([x,xm,0],[y,0,0],'y')             %画填色图
alpha(0.5)                             %平面半透明
legend('\ity/a','\itS/a\rm^2','\itL/a',0)%加图例

%程序结束.周群益设计
