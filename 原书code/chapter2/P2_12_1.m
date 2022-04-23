%余弦函数乘积的极限函数
clear                                  %清除变量
nm=4;                                  %最大整数
n=1:nm;                                %正整数向量
xm=15;                                 %最大横坐标
x=-xm:0.2:xm;                          %自变量向量
[X,N]=meshgrid(x,n);                   %正整数向量化为矩阵
Y=cumprod(cos(X./2.^N));               %函数
figure                                 %创建图形窗口
plot(x,Y,'--',x,sin(x)./x,'.-k','LineWidth',2)%画曲线族
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itf','FontSize',16)           %加纵坐标
title('余弦函数乘积的极限函数','FontSize',16)%加标题
grid on                                %加网格
legend(char([repmat('\itn\rm=',nm,1),num2str(n')],'极限曲线'))%加图例
hold on                                %保持属性
plot(0,1,'or','LineWidth',2)           %画极限圈

%程序结束.周群益设计
