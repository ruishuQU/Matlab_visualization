%反双曲函数
clear                                  %清除变量
xm=3;                                  %最大自变量
x=-xm:0.01:xm;                         %自变量向量
xx=1:0.01:xm;                          %自变量向量
yac=acosh(xx);                         %反双曲余弦函数
figure                                 %创建图形窗口
plot(x,asinh(x),xx,yac,'--',xx,-yac,'g--','LineWidth',2)%画函数曲线
title('反双曲正弦和反双曲余弦函数','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
grid on                                %加网格
legend('反双曲正弦','反双曲余弦',2)    %图例

x0=-1:0.05:1;                          %自变量向量
yac=acoth(xx);                         %反双曲余切函数
figure                                 %创建图形窗口
plot(x0,atanh(x0),xx,yac,'--',-xx,-yac,'g--','LineWidth',2)%画函数曲线
title('反双曲正切曲线和反双曲余切函数','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
grid on                                %加网格
legend('反双曲正切','反双曲余切',2)    %图例
pause                                  %暂停
y=log(abs((1+x)./(1-x)))/2;            %对数
hold on                                %保持属性
plot(x,y,'.')                          %画函数曲线

%程序结束.周群益设计
