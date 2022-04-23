%幂函数的导数
clear                                  %清除变量
syms x n                               %定义符号变量
y=x^n                                  %符号函数
dy_dx=diff(y)                          %求y对x的导数
f=inline(y);                           %函数的内线函数
df=inline(dy_dx)                       %导数的内线函数
xm=3;                                  %最大横坐标
dx=0.05;                               %间隔
x=-xm:dx:xm;                           %横坐标向量
n=-3:3;                                %整数向量
[N,X]=meshgrid(n,x);                   %整数和坐标矩阵
Y=f(N,X);                              %幂函数值
figure                                 %创建图形窗口
plot(x,Y,'LineWidth',2)                %画曲线族
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
title('幂函数','FontSize',16)          %加标题
grid on                                %加网格
axis([-xm,xm,-3,3])                    %设置坐标范围
legend([repmat('\itn\rm=',length(n),1),num2str(n')],4)%加图例
DY=df(N,X);                            %幂函数导数的值
figure                                 %创建图形窗口
plot(x,DY,'LineWidth',2)               %画曲线族
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity\prime','FontSize',16)     %加纵坐标
title('幂函数的导数','FontSize',16)    %加标题
grid on                                %加网格
axis([-xm,xm,-3,3])                    %设置坐标范围
legend([repmat('\itn\rm=',length(n),1),num2str(n')])%加图例

%程序结束.周群益设计
