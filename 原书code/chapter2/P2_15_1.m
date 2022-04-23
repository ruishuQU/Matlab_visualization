%含参数的基本指数函数的极限
clear                                  %清除变量
syms x a                               %定义符号变量
f=(a^x-1)/x                            %符号函数
l=limit(f,x,0)                         %符号极限

f=inline(f);                           %符号函数转化为内线函数
xm=0.5;                                %最大横坐标
x=-xm:0.01:xm;                         %自变量向量
a=0.5:0.5:3;                           %参数向量
[A,X]=meshgrid(a,x);                   %参数和自变量矩阵
F=f(A,X);                              %函数矩阵
F(imag(F)~=0)=nan;                     %复数改为非数
figure                                 %创建图形窗口
plot(x,F,'LineWidth',2)                %画曲线族
title('含参数的比指数函数的极限','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itf','FontSize',16)           %加纵坐标
legend([repmat('\ita\rm=',length(a),1),num2str(a')],2)%加图例
grid on                                %加网格
l=subs(l,'a',a);                       %将符号替换为整数向量
hold on                                %保持图像
plot(0,l,'or','LineWidth',2)           %画极限点
text(zeros(size(l)),l,num2str(l'),'FontSize',16)%标记极限值

%程序结束.周群益设计
