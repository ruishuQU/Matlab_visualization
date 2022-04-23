%无极限的数列
clear                                  %清除变量
nm=20;                                 %最大整数
n=1:nm;                                %整数向量
an=n.^((-1).^n);                       %数列
figure                                 %创建图形窗口
plot(n,an,'LineWidth',2)               %画线
title('无极限的数列','FontSize',16)    %加标题
xlabel('\itn','FontSize',16)           %加横坐标
ylabel('\ita_n','FontSize',16)         %加纵坐标
grid on                                %加网格
k=1:nm/2;                              %整数向量
hold on                                %保持图像
plot(2*k,2*k,'+--',2*k-1,1./(2*k-1),'x--','LineWidth',2)%画线

%程序结束.周群益设计
