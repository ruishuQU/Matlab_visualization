%对数函数
clear                                  %清除变量
xm=3;                                  %最大自变量
x=0.1:0.1:xm;                          %自变量向量
a=[1/exp(1),0.5:0.5:2,exp(1),10];      %底数向量
[A,X]=meshgrid(a,x);                   %底数和自变量矩阵
Y=log(X)./log(A);                      %对数函数矩阵
%Y(isinf(Y))=0;                         %无穷大改为0
figure                                 %创建图形窗口
plot(x,Y,'LineWidth',2)                %画函数曲线族
title('对数函数曲线族','FontSize',16)  %加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
grid on                                %加网格
%legend(num2str(a'),4)                 %简单图例
legend([repmat('\ita\rm=',length(a),1),num2str(a')],4)%复杂图例
hold on                                %保持属性
plot(x,-log(x),'*',x,log(x),'+',x,log10(x),'x')%补画自然对数和常用对数曲线

%程序结束.周群益设计
