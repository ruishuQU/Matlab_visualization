%有理分式函数的规律
clear                                  %清除变量
syms x                                 %定义符号变量
y=x^2/(1+x);                           %符号函数
k=double(limit(y/x,x,Inf))             %渐近线斜率
b=double(limit(y-k*x,x,Inf))           %截距
dy_dx=diff(y)                          %求符号导数
d2y_dx2=diff(y,2)                      %求符号二阶导数
f=inline(y)                            %化为内线函数
df=inline(dy_dx)                       %化为内线函数
d2f=inline(d2y_dx2)                    %化为内线函数
xm=4;                                  %最大横坐标
x=-xm:0.01:xm;                         %横坐标向量
figure                                 %创建图形窗口
plot(x,f(x),x,df(x),'--',x,d2f(x),'-.','LineWidth',2)%画函数曲线
title('有理分式函数的单调性和凹凸性以及极值和渐近线','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
legend('\ity','\ity\prime','\ity\prime\prime',4)%图例
axis([-xm,xm,-6,4])                    %设置曲线范围
dx0=solve(dy_dx)                       %求符号零点
dx0=double(dx0)                        %化为数值
dy0=f(dx0);                            %极值
hold on                                %保持属性
stem(dx0,dy0,'--')                     %画杆线
text(dx0,dy0,[num2str(dx0),repmat(',',length(dx0),1),num2str(dy0)],...
    'FontSize',16)                     %标记极值
x=[-xm,xm];                            %横坐标向量
y=k*x+b;                               %纵坐标向量
plot(x,y,':',[-1,-1],[-6,4],':','LineWidth',2)%画渐近线

%程序结束.周群益设计
