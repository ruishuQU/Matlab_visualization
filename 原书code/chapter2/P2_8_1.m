%无量纲的有理函数的极限
clear                                  %清除变量
syms x n a                             %定义符号变量
fn=(x^n-a^n-n*a^(n-1)*(x-a))/(x-a)^2   %符号函数
l=limit(fn,x,a)                        %符号极限
fn=(x^n-1-n*(x-1))/(x-1)^2             %符号函数
l=limit(fn,x,1)                        %符号极限
fn=inline(fn);                         %符号函数转化为内线函数

xm=2;                                  %最大横坐标
x=0:0.01:xm;                           %自变量向量
nm=6;                                  %最大整数
n=1:nm;                                %整数向量
[N,X]=meshgrid(n,x);                   %整数和自变量矩阵
figure                                 %创建图形窗口
plot(x,fn(N,X),'LineWidth',2)          %画曲线族
title('约化的有理函数的极限','FontSize',16)%加标题
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\itf_n/a^{n\rm-2}','FontSize',16)%加纵坐标
legend([repmat('\itn\rm=',length(n),1),num2str(n')],2)%加图例
grid on                                %加网格
l=subs(l,'n',n);                       %将符号替换为整数向量
hold on                                %保持图像
plot(1,l,'or','LineWidth',2)           %画极限点
text(ones(size(n)),l,num2str(l',4),'FontSize',16)%标记极限值

%程序结束.周群益设计
