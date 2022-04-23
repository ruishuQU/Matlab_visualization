%抛物线的曲率半径
clear                                  %清除变量
syms x                                 %定义符号变量
y=x^2/2                                %符号函数
dy_dx=diff(y)                          %求符号导数
d2y_dx2=diff(y,2)                      %求二阶符号导数
rho=(1+dy_dx^2)^(3/2)/abs(d2y_dx2)     %求曲率半径
xc=x-dy_dx*(1+dy_dx^2)/d2y_dx2;        %渐屈线横坐标
yc=y+(1+dy_dx^2)/d2y_dx2;              %渐屈线纵坐标

f=inline(y)                            %符号函数化为内线函数
fr=inline(rho)                         %符号曲率半径化为内线函数
xm=2;                                  %最大横坐标
x=-xm:0.01:xm;                         %横坐标向量
figure                                 %创建图形窗口
plot(x,f(x),x,fr(x),'--','LineWidth',2)%画函数和半径曲线
title('开口向上的抛物线和曲率半径以及渐屈线','FontSize',16)%加标题
xlabel('\itx/p','FontSize',16)         %加横坐标
grid on                                %加网格
xxc=subs(xc,'x',x);                    %替换渐屈线横坐标值
yyc=subs(yc,'x',x);                    %替换渐屈线纵坐标值
hold on                                %保持属性
plot(xxc,yyc,'-.r','LineWidth',2)      %画渐屈线
legend('\ity/p','\it\rho/p','\ity_C/p-x_C/p',4)%加图例

dr_dx=diff(rho)                        %求半径的导数
xcm=solve(dr_dx)                       %求零点
xcm=double(xcm)                        %化为数值
xcm(imag(xcm)~=0)=[]                   %删除复数
ycm=subs(yc,'x',xcm);                  %替换渐屈线纵坐标值
rcm=subs(rho,'x',xcm)                  %求极值
rcm=double(rcm)                        %化为数值
text(xcm,ycm,[num2str(xcm),',',num2str(rcm)],'FontSize',16)%标记极值
t=linspace(0,2*pi);                    %角度向量
plot(xcm+rcm*cos(t),ycm+rcm*sin(t),':','LineWidth',2)%画最小曲率圆
axis equal                             %使坐标间隔相等
axis([-xm,xm,0,3])                     %设置曲线范围

%程序结束.周群益设计
