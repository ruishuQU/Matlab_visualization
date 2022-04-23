%标准方程的抛物线
clear                                  %清除变量
ym=3;                                  %最大纵坐标
y=-ym:0.1:ym;                          %纵坐标向量
x=y.^2/2;                              %横坐标向量
figure                                 %创建图形窗口
plot(x,y,-x,y,'--',y,x,'-.',y,-x,':','LineWidth',2)%画各种抛物线
xlabel('\itx/p','FontSize',16)         %加横坐标
ylabel('\ity/p','FontSize',16)         %加纵坐标
title('标准抛物线','FontSize',16)       %加标题
grid on                                %加网格
legend('开口向右','开口向左','开口向上','开口向下',0)%加图例

%程序结束.周群益设计
