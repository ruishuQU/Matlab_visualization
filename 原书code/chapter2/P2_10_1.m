%开多次方的根函数的极限
clear                                  %清除变量
syms x n                               %定义符号变量
fn=((1+x)^(1/n)-1)/x                   %函数
l=limit(fn,x,0)                        %符号极限
fn=inline(fn);                         %符号函数转化为内线函数

xm=1;                                  %最大横坐标
x=-xm:0.01:xm;                         %自变量向量
nm=3;                                  %最大整数
n=-nm:nm;                              %整数向量
[N,X]=meshgrid(n,x);                   %整数和自变量矩阵
figure                                 %创建图形窗口
plot(x,fn(N,X),'LineWidth',2)          %画曲线族
title('开多次方的根函数的极限','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itf_n','FontSize',16)         %加纵坐标
legend([repmat('\itn\rm=',length(n),1),num2str(n')])%加图例
grid on                                %加网格
l=subs(l,'n',n);                       %将符号替换为整数向量
hold on                                %保持图像
plot(0,l,'or','LineWidth',2)           %画极限点
text(0*ones(size(n)),l,num2str(l',4),'FontSize',16)%标记极限值
axis([-xm,xm,-3,3])                    %设置曲线范围

%程序结束.周群益设计
