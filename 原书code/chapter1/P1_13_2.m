%双曲线族
clear                                  %清除变量
b=0.25:0.25:1.25;                      %虚半轴向量
t=linspace(-3*pi/7,3*pi/7);            %参数向量
[B,T]=meshgrid(b,t);                   %虚半轴和参数矩阵
X=sec(T);                              %横坐标矩阵
Y=B.*tan(T);                           %纵坐标矩阵
figure                                 %创建图形窗口
plot(X,Y,'LineWidth',2)                %画右边曲线族
hold on                                %保持属性
plot(-X,Y,'LineWidth',2)               %画左边曲线族
legend([repmat('\itb/a\rm=',length(b),1),num2str(b')],0)%图例
title('双曲线族','FontSize',16)        %加标题
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\ity/a','FontSize',16)         %加纵坐标
grid on                                %加网格
axis equal                             %使坐标间隔相等
pause                                  %暂停
t=-2:0.1:2;                            %参数向量
[B,T]=meshgrid(b,t);                   %虚半轴和参数矩阵
X=cosh(T);                             %横坐标矩阵
Y=B.*sinh(T);                          %纵坐标矩阵
plot(X,Y,'+','LineWidth',2)            %画右边函数曲线族
plot(-X,Y,'+','LineWidth',2)           %画左边函数曲线族
text(-6,-5,'实线表示三角函数的参数方程,加号表示双曲函数参数方程.',...
    'FontSize',16)                     %加说明
pause                                  %暂停
x=1:0.1:4;                             %横坐标向量
[B,X]=meshgrid(b,x);                   %虚半轴和横坐标矩阵
Y=B.*sqrt(X.^2-1);                     %纵坐标矩阵
plot(X,Y,'x','LineWidth',2)            %画右上函数曲线族
plot(X,-Y,'x','LineWidth',2)           %画右下函数曲线族
plot(-X,Y,'x','LineWidth',2)           %画左上函数曲线族
plot(-X,-Y,'x','LineWidth',2)          %画左下函数曲线族

%程序结束.周群益设计
