%不同指数的有理函数在无穷远处的极限
clear                                  %清除变量
xm=10;                                 %最大横坐标
xx=0:0.01:xm;                          %自变量向量
syms x                                 %定义符号变量
pn=x+1;                                %n=1的符号函数
l=1;                                   %n=1的极限
Fn=ones(size(xx));                     %全1向量
nm=3;                                  %最大整数
for n=2:nm                             %按整数循环
    pn=pn*(x^n+1);                     %求符号函数的分子
    fn=pn/((n*x)^n+1)^((n+1)/2)        %形成下一个函数
    l=[l,limit(fn,x,inf)];             %计算和连接极限
    fn=inline(fn);                     %转化为内线函数
    Fn=[Fn;fn(xx)];                    %连接向量成矩阵
end                                    %结束循环
figure                                 %创建图形窗口
plot(xx,Fn,'LineWidth',2)              %画曲线族
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itf_n','FontSize',16)         %加纵坐标
title('不同指数的有理函数在无穷远处的极限','FontSize',16)%加标题
grid on                                %加网格
legend([repmat('\itn\rm=',nm,1),num2str((1:nm)')])%加图例
l=double(l);                           %符号化为数值
hold on                                %保持图像
plot(xm,l,'or','LineWidth',2)          %画极限点
text(xm*ones(1,nm),l,num2str(l'),'FontSize',16)%标记极限值
%无法求极限
% syms n x
% sn=symprod((x^n+1),n,1,n)
% fn=sn/((n*x)^n+1)^((n+1)/2)
% limit(fn,x,inf)

%程序结束.周群益设计
