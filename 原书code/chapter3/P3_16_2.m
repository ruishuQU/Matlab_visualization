%隐函数的曲线和导数
clear                                  %清除变量
rm=6;                                  %最大坐标
r=-rm:0.1:rm;                          %坐标向量
[X,Y]=meshgrid(r);                     %坐标矩阵
F=X.*Y-exp(Y)+exp(X);                  %二元函数
figure                                 %创建图形窗口
C=contour(X,Y,F,[0,0],'r');            %画零值线并取坐标矩阵
title('隐函数曲线和导数曲线','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
hold on                                %保持属性
i=1;                                   %第1个坐标个数所在位置
while 1                                %无限循环
    n=C(2,i);                          %取坐标个数
    x=C(1,i+1:i+n);                    %取横坐标
    y=C(2,i+1:i+n);                    %取纵坐标
    dy_dx=(exp(x)+y)./(exp(y)-x);      %计算导数
    d2y_dx2=(2*dy_dx+exp(x)-exp(y).*dy_dx.^2)./(exp(y)-x);%计算二阶导数
    plot(x,dy_dx,'--',x,d2y_dx2,'-.','LineWidth',2)%画导数曲线
    i=i+n+1;                           %下一个坐标个数所在位置
    if i>length(C),break,end           %如果坐标取完则退出循环
end                                    %结束循环
legend('\ity','\ity\prime','\ity\prime\prime',2)%加图例
pause                                  %暂停
syms x y                               %定义符号变量
f=x*y-exp(y)+exp(x);                   %二元符号函数
ezplot(f)                              %用简易画图指令画隐函数曲线

%程序结束.周群益设计
