%抛物线方程组的解
clear                                  %清除变量
x=-2:0.01:4;                           %自变量
y=1-x.^2;                              %求一个方程的函数
figure                                 %创建图形窗口
plot(x,y,'LineWidth',2)                %画开口向下的抛物线
x=4-16*y.^2;                           %求另一个方程的自变量
hold on                                %保持属性
plot(x,y,'LineWidth',2)                %画开口向左的抛物线
title('抛物线方程组的交点','FontSize',16)%标题
xlabel('\itx','FontSize',16)           %横坐标
ylabel('\ity','FontSize',16)           %纵坐标
grid on                                %加网格
axis equal                             %使坐标间隔相等
axis([-2,4,-2,2])                      %设置曲线范围

f='16*(1-x^2)^2+x-4'                   %关于x的字符串表达式
x0=solve(f)                            %求交点的横坐标
x0=double(x0);                         %符号化为数值
y0=1-x0.^2;                            %求交点的纵坐标
plot(x0,y0,'*','MarkerSize',8)         %画交点
f='y+(4-16*y^2)^2-1'                   %关于y的字符串表达式
y0=solve(f)                            %求交点的纵坐标
y0=double(y0);                         %符号化为数值
x0=4-16*y0.^2;                         %求交点的横坐标
plot(x0,y0,'o','MarkerSize',10)        %画交点

s1='y+x^2-1';                          %第一个字符串表达式
s2='16*y^2+x-4';                       %第二个字符串表达式
[x0,y0]=solve(s1,s2)                   %求零点坐标
x0=double(x0);                         %符号化为数值
y0=double(y0);                         %符号化为数值
plot(x0,y0,'s','MarkerSize',12)        %画交点
text(x0,y0,[num2str(x0),repmat(',',length(x0),1),num2str(y0)],...
    'FontSize',16)                     %标记交点

%程序结束.周群益设计
