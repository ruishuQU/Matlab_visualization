%函数和反函数
clear                                  %清除变量
syms x                                 %定义符号变量
y=2*x+1                                %符号直接函数
yy=finverse(y)                         %求符号反函数
f=inline(y)                            %符号直接函数化为内线函数
ff=inline(yy)                          %符号反函数化为内线函数
x=-3:0.1:3;                            %自变量向量
y=f(x);                                %函数向量
yy=ff(x);                              %反函数向量
figure                                 %创建图形窗口
plot(x,y,x,yy,'--','LineWidth',2)      %画函数和反函数曲线
hold on                                %保持属性
plot(x,x,'-.','LineWidth',2)           %画对称直线
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
title('函数和反函数','FontSize',16)    %加标题
grid on                                %加网格
axis equal                             %使坐标间隔相等
legend('函数','反函数',2)              %图例
pause                                  %暂停
plot(y,x,'.','LineWidth',2)            %再画反函数曲线

%程序结束.周群益设计
