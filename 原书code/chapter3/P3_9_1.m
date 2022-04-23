%星形线的导数
clear                                  %清除变量
syms t                                 %定义符号参变量
x=cos(t)^3;                            %符号横坐标
y=sin(t)^3;                            %符号纵坐标
dx_dt=diff(x)                          %x对t的符号导数dx/dt
dy_dt=diff(y)                          %y对t的符号导数dy/dt
dy_dx=dy_dt/dx_dt                      %y对x的符号导数dy/dx
d2y_dxdt=diff(dy_dx)                   %dy/dx对t的符号导数d2y/dxdt

dfx=inline(dx_dt);                     %dx/dt的内线函数
dfy=inline(dy_dt);                     %dy/dt的内线函数
d2fy=inline(d2y_dxdt);                 %d2y/dxdt的内线函数
t=linspace(-pi,pi);                    %参变量向量
dx=dfx(t);                             %dx/dt的值
dy=dfy(t);                             %dy/dt的值
d2y=d2fy(t);                           %d2y/dxdt的值
figure                                 %创建图形窗口
plot(t,dx,'--+',t,dy,'-.x',t,dy./dx,'-*',t,d2y./dx,':.',...
    'LineWidth',2)                     %画曲线
legend('d\itx/a\rmd\itt','d\ity/a\rmd\itt',...
    'd\ity\rm/d\itx','\ita\rmd^2\ity\rm/d\itx\rm^2',2)%加图例
title('星形线随参变量变化的导数','FontSize',16)%加标题
grid on                                %加网格
xlabel('\itt','FontSize',16)           %加横坐标
axis([-pi,pi,-2.5,2.5])                %设置范围

fx=inline(x);                          %x的内线函数
fy=inline(y);                          %y的内线函数
x=fx(t);                               %x的值
y=fy(t);                               %y的值
dt=t(2)-t(1);                          %间隔
dx=diff(x)/dt;                         %求x对t的数值导数
dx=[dx(1),(dx(1:end-1)+dx(2:end))/2,dx(end)];%求平均值
dy=diff(y)/dt;                         %求y对t的数值导数
dy=[dy(1),(dy(1:end-1)+dy(2:end))/2,dy(end)];%求平均值
dy_dx=dy./dx;                          %y对x的数值导数
d2y=diff(dy_dx)/dt;                    %求dy/dx对t的数值导数
d2y=[d2y(1),(d2y(1:end-1)+d2y(2:end))/2,d2y(end)];%求平均值
hold on                                %保持属性
plot(t,dx,'d',t,dy,'s',t,dy_dx,'o',t,d2y./dx,'^','LineWidth',2)%画曲线
text(-pi,-1.4,'加号,乘号和星号表示解析解,方形,棱形和圈表示数值解.',...
    'FontSize',16)                     %加说明

x(t<0)=NaN;                            %参变量小于0的横坐标改为非数
%dy_dx(abs(dy_dx)>4)=NaN;               %太大的值改为非数
figure                                 %创建图形窗口
plot(x,dx,'--',x,dy,'-.',x,dy_dx,x,d2y./dx,':','LineWidth',2)%画曲线
legend('d\itx/a\rmd\itt','d\ity/a\rmd\itt',...
    'd\ity\rm/d\itx','\ita\rmd^2\ity\rm/d\itx\rm^2',3)%加图例
title('星形线随坐标变化的导数','FontSize',16)%加标题
xlabel('\itx/a','FontSize',16)         %加横坐标
axis([-1,1,-2.5,2.5])                  %设置范围
grid on                                %加网格

%程序结束.周群益设计
