%对数函数的导数
clear                                  %清除变量
syms x a                               %定义符号变量
y=log(x)/log(a)                        %符号函数
dy_dx=diff(y)                          %求y对x的导数
f=inline(y);                           %函数的内线函数
df=inline(dy_dx)                       %导数的内线函数
xm=3;                                  %最大自变量
x=0.1:0.1:xm;                          %自变量向量
a=[1/exp(1),0.5:0.5:2,exp(1),10];      %底数向量
[A,X]=meshgrid(a,x);                   %底数和自变量矩阵
Y=log(X)./log(A);                      %对数函数矩阵
%Y(isinf(Y))=0;                         %无穷大改为0
figure                                 %创建图形窗口
plot(x,Y,'LineWidth',2)                %画函数曲线族
title('对数函数曲线族','FontSize',16)  %加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
grid on                                %加网格
legend([repmat('\ita\rm=',length(a),1),num2str(a')],4)%复杂图例

DY=df(A,X);                            %对数函数导数的值
figure                                 %创建图形窗口
plot(x,DY,'LineWidth',2)               %画曲线族
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity\prime','FontSize',16)     %加纵坐标
title('对数函数的导数','FontSize',16)  %加标题
grid on                                %加网格
axis([0,xm,-3,3])                      %设置坐标范围
legend([repmat('\ita\rm=',length(a),1),num2str(a')],0)%加图例

%程序结束.周群益设计
