%整数幂函数
clear                                  %清除变量
xm=3;                                  %最大自变量
x=-xm:0.01:xm;                         %自变量向量
n=-3:3;                                %指数向量
[N,X]=meshgrid(n,x);                   %指数和自变量矩阵
Y=X.^N;                                %幂函数矩阵
figure                                 %创建图形窗口
plot(x,Y,'LineWidth',2)                %画函数曲线族
title('整数幂函数曲线族','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
grid on                                %加网格
%legend(num2str(a'),4)                 %简单图例
legend([repmat('\itn\rm=',length(n),1),num2str(n')],4)%复杂图例
axis([-xm,xm,-5,5])                    %设置坐标范围

%程序结束.周群益设计
