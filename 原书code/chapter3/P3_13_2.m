%验证拉格朗日中值定理
clear                                  %清除变量
a=0;                                   %起点横坐标
b=1;                                   %终点横坐标
syms x                                 %定义符号变量
y=x^3+2*x                              %符号函数
f=inline(y)                            %函数内线函数
ya=f(a);                               %起点纵坐标
yb=f(b);                               %终点纵坐标
k=(yb-ya)/(b-a);                       %斜率
dy_dx=diff(y)                          %求导数
x0=solve(dy_dx-k)                      %求同斜率的点的横坐标
x0=double(x0);                         %化为数值
y0=f(x0);                              %求函数值
dx=0.1;                                %间隔
x=a-1:dx:b+0.5;                        %横坐标向量
y=f(x);                                %纵坐标向量
figure                                 %创建图形窗口
plot(x,f(x),[a,b],[ya,yb],'--*',x0,y0,'o','LineWidth',2)%画曲线
xlabel('\itx','FontSize',16)           %加横坐标
title('验证拉格朗日中值定理','FontSize',16)%加标题
text(x0,y0,[num2str(x0),repmat(',',length(x0),1),num2str(y0)],...
    'FontSize',16)                     %加说明
grid on                                %加网格
x0=x0(x0>=a&x0<=b);                    %取区间点的横坐标
y=f(x0)+k*(x-x0);                      %求纵坐标
hold on                                %保持属性
plot(x,y,':','LineWidth',2)            %画平行线
axis tight                             %曲线帖框

%程序结束.周群益设计
