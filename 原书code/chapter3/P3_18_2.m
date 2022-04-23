%曳物线的曲率半径和渐屈线
clear                                  %清除变量
syms y                                 %定义符号变量
x=log((1+sqrt(1-y^2))/y)-sqrt(1-y^2);  %符号表达式
dx_dy=diff(x);                         %求x对y的符号一阶导数
dy_dx=1/dx_dy;                         %求y对x的符号一阶导数
d2x_dy2=diff(x,2);                     %求x对y的符号二阶导数
d2y_dx2=-d2x_dy2/dx_dy^3;              %求y对x的符号二阶导数
rho=(1+dy_dx^2)^(3/2)/d2y_dx2          %曲率半径
simplify(rho)                          %化简
xc=x-dy_dx*(1+dy_dx^2)/d2y_dx2         %渐屈线横坐标
simplify(xc)                           %化简
yc=y+(1+dy_dx^2)/d2y_dx2               %渐屈线纵坐标
simplify(yc)                           %化简

f=inline(x);                           %符号横坐标转化为内线函数
fr=inline(rho);                        %符号曲率半径转化为内线函数
fxc=inline(xc);                        %渐屈线符号横坐标转化为内线函数
fyc=inline(yc);                        %渐屈线符号纵坐标转化为内线函数
dy=0.01;                               %纵坐标间隔
y=1:-dy:0.1;                           %纵坐标向量
x=f(y);                                %取横坐标值
rho=abs(fr(y));                        %取曲率半径值
xc=fxc(y);                             %取渐屈线横坐标值
yc=fyc(y);                             %取渐屈线纵坐标值
figure                                 %创建图形窗口
plot(x,y,xc,yc,'--',x,rho,'-.','LineWidth',2)%画曲线
hold on                                %保持属性
plot(-x,y,-xc,yc,'--',-x,rho,'-.','LineWidth',2)%画曲线
title('曳物线和渐屈线','FontSize',16)  %加标题
xlabel('\itx/a','FontSize',16)         %加横坐标
legend('曳物线','渐屈线','曲率半径',0)  %加图例
grid on                                %加网格
pause                                  %暂停
rho=sqrt(1-y.^2)./y;                   %曲率半径解析式
y=cosh(x);                             %纵坐标向量
plot(x,y,'g+',-x,y,'g+',x,rho,'rx',-x,rho,'rx')%画曲率半径和渐屈线

%程序结束.周群益设计
