%刻卜勒方程和导数
clear                                  %清除变量
syms y e                               %定义符号变量
x=y-e*sin(y);                          %反函数符号表达式
dx_dy=diff(x)                          %求x对y的符号导数
dy_dx=1/dx_dy;                         %求y对x的符号导数
d2x_dy2=diff(x,2)                      %求x对y的符号二阶导数
d2y_dx2=-d2x_dy2/dx_dy^3               %求y对x的符号二阶导数

fx=inline(x);                          %反函数转化为内线函数
df=inline(dy_dx);                      %y对x的符号导数转化为内线函数
d2f=inline(d2y_dx2);                   %y对x的符号二阶导数转化为内线函数
y=linspace(-pi,pi);                    %纵坐标向量
dy=y(2)-y(1);                          %纵坐标间隔
e=0.1:0.2:0.9;                         %常数向量
[E,Y]=meshgrid(e,y);                   %常数和纵坐标矩阵
X=fx(E,Y);                             %横坐标向量
figure                                 %创建图形窗口
plot(X,Y,'LineWidth',2)                %画曲线族
title('刻卜勒方程','FontSize',16)      %加标题
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
axis([-pi,pi,-pi,pi])                  %设置曲线范围
legend([repmat('\it\epsilon\rm=',length(e),1),num2str(e')],4)%加图例

dY=df(E,Y);                            %导数矩阵
figure                                 %创建图形窗口
plot(X,dY,'.--','LineWidth',2)         %画曲线族
title('刻卜勒方程的导数','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
axis([-pi,pi,0,2])                     %设置曲线范围
legend([repmat('\it\epsilon\rm=',length(e),1),num2str(e')],0)%加图例
dX=diff(X)/dy;                         %求差分
dX=[dX(1,:);(dX(1:end-1,:)+dX(2:end,:))/2;dX(end,:)];%求平均值
hold on                                %保持属性
plot(X,1./dX,'o')                      %画数值导数圈
text(-pi,0.2,'点表示解析导数,圈表示数值导数','FontSize',16)%加说明

d2Y=d2f(E,Y);                          %二阶导数矩阵
figure                                 %创建图形窗口
plot(X,d2Y,'.-.','LineWidth',2)        %画曲线族
title('刻卜勒方程的二阶导数','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
axis([-pi,pi,-2,2])                    %设置曲线范围
legend([repmat('\it\epsilon\rm=',length(e),1),num2str(e')],0)%图例
d2X=diff(dX)/dy;                       %求差分
d2X=[d2X(1,:);(d2X(1:end-1,:)+d2X(2:end,:))/2;d2X(end,:)];%求平均值
hold on                                %保持属性
plot(X,-d2X./dX.^3,'s')                %画数值导数方形
text(-pi,-1,'点表示解析二阶导数,方形表示数值二阶导数','FontSize',16)%加说明

%程序结束.周群益设计
