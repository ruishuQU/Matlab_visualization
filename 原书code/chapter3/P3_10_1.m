%反正切函数的高阶导数
clear                                  %清除变量
syms x                                 %定义符号变量
y=atan(x);                             %符号函数
f=inline(y);                           %符号函数转化为内线函数
xm=3;                                  %最大横坐标
dx=0.05;                               %数值间隔
x=-xm:dx:xm;                           %自变量向量
nm=4;                                  %最大整数
n=1:nm;                                %整数向量
[N,X]=meshgrid(n,x);                   %整数和自变量矩阵
Y=acot(X);                             %反余切函数
Y(X<0)=Y(X<0)+pi;                      %负数加pi
dY=(-1).^(N-1).*factorial(N-1).*sin(N.*Y)./(1+X.^2).^(N/2);%导数矩阵
figure                                 %创建图形窗口
plot(x,f(x),x,dY,'x-','LineWidth',2)   %画解析解曲线族
legend([repmat('\itn\rm=',nm+1,1),num2str([n'-1;nm])],2)%加图例
title('反正切函数的高阶导数','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
hold on                                %保持属性
for n=1:nm                             %循环
    dy=diff(y,n)                       %求符号导数
    plot(x,subs(dy,'x',x),'o')         %画曲线
end                                    %结束循环
text(-xm,-4,'叉号是解析解,圈是符号解.','FontSize',16)%加说明

%程序结束.周群益设计
