%含参数的四次多项式在拐点的切线和法线
clear                                  %清除变量
syms x k                               %定义符号变量
y=k*(x^2-3)^2;                         %符号函数
d2y_dx2=diff(y,2)                      %求符号二阶导数
xc=solve(d2y_dx2)                      %求二阶导数符号零点
xc=double(xc(1))                       %取第一个值
yc=subs(y,x,xc)                        %求拐点的函数值
dy_dx=diff(y)                          %求符号一阶导数
kc=subs(dy_dx,x,xc)                    %求拐点的符号斜率
s=yc+xc/kc                             %过原点的法线方程
k=solve(s)                             %求系数
k=double(k(1))                         %取第一个值

y=k*(x^2-3)^2;                         %重建符号函数
dy_dx=diff(y)                          %再求符号导数
d2y_dx2=diff(y,2)                      %再求符号二阶导数
f=inline(y)                            %符号函数化为内线函数
df=inline(dy_dx)                       %符号导数化为内线函数
d2f=inline(d2y_dx2)                    %符号二阶导数化为内线函数

dx=0.01;                               %间隔
xm=3;                                  %最大横坐标
x=-xm:dx:xm;                           %横坐标向量
figure                                 %创建图形窗口
plot(x,f(x),x,df(x),'--',x,d2f(x),'-.','LineWidth',2)%画函数曲线
title('四次多项式在拐点的切线和法线','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
legend('\ity','\ity\prime','\ity\prime\prime',4)%加图例
axis([-1,1,-1,1]*xm)                   %设置曲线范围
axis equal                             %使坐标间隔相等
text(0,-1,['\itk\rm=\pm',num2str(k)],'FontSize',16)%标记系数

yc=f(xc);                              %拐点的函数值
hold on                                %保持属性
stem(xc,yc,'--d')                      %画右边杆线
text(xc,yc,[num2str(xc),',',num2str(yc)],'FontSize',16)%标记右边拐点
stem(-xc,yc,'--d')                     %画左边杆线
text(-xc,yc,[num2str(-xc),',',num2str(yc)],'FontSize',16)%标记左边拐点

kc=df(xc)                              %切点的斜率
x=[xc-1.5,xc+1];                       %横坐标向量
y1=yc+kc*(x-xc);                       %切线纵坐标向量
y2=yc-(x-xc)/kc;                       %法线纵坐标向量
plot(x,y1,x,y2,'LineWidth',2)          %画右边切线和法线
plot(-x,y1,-x,y2,'LineWidth',2)        %画左边切线和法线

%程序结束.周群益设计
