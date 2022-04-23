%不同指数的有理函数的极限
clear                                  %清除变量
x0=1;                                  %极限横坐标
syms x n                               %定义符号变量
fn=(x^(n+1)-(n+1)*x+n)/(x-1)^2         %符号函数
l=limit(fn,x,x0)                       %符号极限
simplify(l)                            %化简
fn=inline(fn);                         %符号函数转化为内线函数

x=0.5:0.01:1.5;                        %自变量向量
nm=6;                                  %最大整数
n=1:nm;                                %整数向量
[N,X]=meshgrid(n,x);                   %整数和自变量矩阵
figure                                 %创建图形窗口
plot(x,fn(N,X),'LineWidth',2)          %画曲线族
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itf_n','FontSize',16)         %加纵坐标
title('不同指数的有理函数的极限','FontSize',16)%加标题
grid on                                %加网格
legend([repmat('\itn\rm=',length(n),1),num2str(n')],2)%加图例
l=subs(l,'n',n);                       %将符号替换为整数向量
hold on                                %保持图像
plot(x0,l,'or','LineWidth',2)          %画极限点
text(x0*ones(1,nm),l,num2str(l'),'FontSize',16)%标记极限值

%程序结束.周群益设计
