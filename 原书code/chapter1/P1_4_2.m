%分数幂函数
clear                                  %清除变量
xm=3;                                  %最大自变量
x=-xm:0.05:xm;                         %自变量向量
n=-1.5:0.5:1.5;                        %指数向量
[N,X]=meshgrid(n,x);                   %指数和自变量矩阵
Y=X.^N;                                %幂函数矩阵
Y(imag(Y)~=0)=nan;                     %复数改为非数
figure                                 %创建图形窗口
plot(x,Y,'LineWidth',2)                %画函数曲线族
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
title('分数幂函数曲线族','FontSize',16)%加标题
grid on                                %加网格
%legend(num2str(a'),4)                 %简单图例
legend([repmat('\itn\rm=',length(n),1),num2str(n')],4)%复杂图例
axis([-xm,xm,-4,4])                    %设置坐标范围
y=sqrt(x);                             %平方根函数
y(imag(y)~=0)=nan;                     %复数改为非数
hold on                                %保持属性
plot(x,y,'.')                          %补画平方根函数曲线

%程序结束.周群益设计
