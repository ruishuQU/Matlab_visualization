%反函数和导数
clear                                  %清除变量
syms y                                 %定义符号变量
x=y^3+3*y;                             %反函数符号表达式
dx_dy=diff(x)                          %求x对y的符号导数
dy_dx=1/dx_dy;                         %求y对x的符号导数
d2x_dy2=diff(x,2)                      %求x对y的符号二阶导数
d2y_dx2=-d2x_dy2/dx_dy^3;              %求y对x的符号二阶导数

fx=inline(x);                          %反函数转化为内线函数
df=inline(dy_dx);                      %y对x的符号导数转化为内线函数
d2f=inline(d2y_dx2);                   %y对x的符号二阶导数转化为内线函数
dy=0.1;                                %纵坐标间隔
y=-1:dy:1;                             %纵坐标向量
x=fx(y);                               %横坐标向量
figure                                 %创建图形窗口
plot(x,y,x,df(y),'+--',x,d2f(y),'x-.','LineWidth',2)%画曲线
title('反函数和导数','FontSize',16)    %加标题
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
dx=diff(x)/dy;                         %求x对y的数值导数
dx=[dx(1),(dx(1:end-1)+dx(2:end))/2,dx(end)];%求平均值
d2x=diff(dx)/dy;                       %求x对y的二阶数值导数
d2x=[d2x(1),(d2x(1:end-1)+d2x(2:end))/2,d2x(end)];%求平均值
hold on                                %保持属性
plot(x,1./dx,'o',x,-d2x./dx.^3,'s')    %画数值导数圈
legend('函数\ity','导数\it\prime','二阶导数\ity\prime\prime',2)%加图例
text(-4,-0.5,'圈表示数值导数,方形表示二阶数值导数','FontSize',16)%加说明

%程序结束.周群益设计
