%指数函数的导数
clear                                  %清除变量
syms x a                               %定义符号变量
y=a^x                                  %符号函数
dy_dx=diff(y)                          %求y对x的导数
f=inline(y);                           %函数的内线函数
df=inline(dy_dx)                       %导数的内线函数
xm=3;                                  %最大自变量
dx=0.1;                                %间隔
x=-xm:dx:xm;                           %自变量向量
e=exp(1);                              %自然对数底
a=[1/e,0.5:0.5:2.5,e];                 %底数向量
[A,X]=meshgrid(a,x);                   %底数和自变量矩阵
Y=f(A,X);                              %指数函数矩阵
figure                                 %创建图形窗口
plot(x,Y,'LineWidth',2)                %画函数曲线族
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
title('指数函数曲线族','FontSize',16)  %加标题
grid on                                %加网格
legend([repmat('\ita\rm=',length(a),1),num2str(a')],0)%加图例
axis([-xm,xm,0,6])                     %设置坐标范围

DY=df(A,X);                            %幂函数导数的值
figure                                 %创建图形窗口
plot(x,DY,'-*','LineWidth',2)          %画曲线族
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity\prime','FontSize',16)     %加纵坐标
title('指数函数的导数','FontSize',16)  %加标题
grid on                                %加网格
legend([repmat('\ita\rm=',length(a),1),num2str(a')],0)%加图例
axis([-xm,xm,-3,3])                    %设置坐标范围

dY=diff(Y)/dx;                         %求差分
dY=[dY(1,:);(dY(1:end-1,:)+dY(2:end,:))/2;dY(end,:)];%求平均值表示数值导数
hold on                                %保持图像
plot(x,dY,'o','LineWidth',2)            %画曲线族
text(-xm,2,'星号是解析解,圆是数值解','FontSize',16)%加说明

%程序结束.周群益设计
