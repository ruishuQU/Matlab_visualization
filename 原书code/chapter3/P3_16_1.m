%隐函数的增减性和凹凸性
clear                                  %清除变量
syms t                                 %定义符号变量
x=t^(1/(t-1));                         %横坐标的符号表达式
y=x*t;                                 %纵坐标的符号表达式
dx_dt=diff(x);                         %求x对t的符号导数dx/dt
dy_dt=diff(y);                         %求y对t的符号导数dy/dt
dy_dx=dy_dt/dx_dt;                     %求y对x的符号导数dy/dx
d2y_dxdt=diff(dy_dx);                  %求dy/dx对t的导数导数d2y/dxdt
d2y_dx2=d2y_dxdt/dx_dt;                %求dy/dx对x的导数导数d2y/dx2
fx=inline(x);                          %符号横坐标转化为内线函数
fy=inline(y);                          %符号纵坐标转化为内线函数
df=inline(dy_dx);                      %y对x的符号导数转化为内线函数
d2f=inline(d2y_dx2);                   %y对x的符号二阶导数转化为内线函数
tm=6;                                  %最大参变量
dt=0.05;                               %参变量间隔
t=0:dt:tm;                             %参变量向量
x=fx(t);                               %取横坐标数值
y=fy(t);                               %取纵坐标数值
dy=df(t);                              %取一阶导数值
d2y=d2f(t);                            %取二阶导数值
figure                                 %创建图形窗口
plot(t,x,':',t,y,t,dy,'--',t,d2y,'-.','LineWidth',2)%画线
title('隐函数的坐标和导数随参变量的变化规律','FontSize',16)%加标题
xlabel('\itt','FontSize',16)           %加横坐标
grid on                                %加网格
axis([0,tm,-10,20])                    %设置坐标范围
legend('\itx','\ity','\ity\prime','\ity\prime\prime',0)% 加图例

figure                                 %创建图形窗口
plot(x,y,x,dy,'--',x,d2y,'-.','LineWidth',2)%画线
title('隐函数的增减性和凹凸性','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
e=exp(1);                              %e值
hold on                                %保持属性
plot(e,e,'o')                          %画双重点
text(e,e,[num2str(e),',',num2str(e)],'FontSize',16)%加说明
rm=8;                                  %最大范围
plot([0,rm],[0,rm],'LineWidth',2)      %画斜线
plot([0,rm],[1,1],'--',[1,1],[-2,rm],'--','LineWidth',2)%画极限线
axis([0,rm,-2,rm])                     %设置坐标范围
legend('\ity','\ity\prime','\ity\prime\prime',0)%加图例
pause                                  %暂停
syms x y                               %定义符号变量
f=y^x-x^y;                             %二元符号函数
ezplot(f)                              %用简易画图指令画隐函数曲线

%程序结束.周群益设计
