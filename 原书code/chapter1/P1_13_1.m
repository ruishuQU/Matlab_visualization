%双曲线
clear                                  %清除变量
b=input('b/a=');                       %键盘输入虚半轴
%b=0.8;                                 %虚半轴参考值
%b=1.2;                                 %虚半轴参考值
%b=1;                                   %虚半轴参考值
xm=4;                                  %最大横坐标
x=1:0.1:xm;                            %横坐标向量
y=b*sqrt(x.^2-1);                      %纵坐标向量
figure                                 %创建图形窗口
plot(x,y,'LineWidth',2)                %画右上函数曲线
hold on                                %保持属性
plot(x,-y,'LineWidth',2)               %画右下函数曲线
plot(-x,y,'LineWidth',2)               %画左上函数曲线
plot(-x,-y,'LineWidth',2)              %画左下函数曲线
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\ity/a','FontSize',16)         %加纵坐标
title('双曲线','FontSize',16)          %加标题
grid on                                %加网格
axis equal                             %使坐标间隔相等
text(0,0,['\itb/a\rm=',num2str(b)],'FontSize',16)%标记参数
x=-xm:0.1:xm;                          %横坐标向量
plot(x,b*x,'-.',x,-b*x,'-.','LineWidth',2)%画渐近线
%画参变量曲线
% t=-2:0.1:2;                            %参数向量
% x=cosh(t);                             %横坐标向量
% y=b*sinh(t);                           %纵坐标向量
% plot(x,y,'+','LineWidth',2)            %画右边函数曲线
% plot(-x,y,'+','LineWidth',2)           %画左边函数曲线

%程序结束.周群益设计
