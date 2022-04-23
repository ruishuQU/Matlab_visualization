%指数函数
clear                                  %清除变量
xm=3;                                  %最大自变量
x=-xm:0.1:xm;                          %自变量向量
e=exp(1);                              %自然对数底
a=[1/e,0.5:0.5:2.5,e];                 %底数向量
[A,X]=meshgrid(a,x);                   %底数和自变量矩阵
Y=A.^X;                                %指数函数矩阵
figure                                 %创建图形窗口
plot(x,Y,'LineWidth',2)                %画函数曲线族
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
title('指数函数曲线族','FontSize',16)  %加标题
grid on                                %加网格
%legend(num2str(a'))                    %简单图例
legend([repmat('\ita\rm=',length(a),1),num2str(a')],0)%复杂图例
axis([-xm,xm,0,6])                     %设置坐标范围
hold on                                %保持属性
plot(x,exp(x),'+',x,exp(-x),'x')       %画以e为底的指数函数

%程序结束.周群益设计
