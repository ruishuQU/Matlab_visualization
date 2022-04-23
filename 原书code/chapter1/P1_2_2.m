%符号函数在开立方中的应用
clear                                  %清除变量
xm=5;                                  %最大自变量
x=-xm:0.01:xm;                         %自变量向量
y=x.^(1/3);                            %函数向量
figure                                 %创建图形窗口
subplot(2,1,1)                         %建立子图
plot(x,y,'LineWidth',2)                %画线
grid on                                %加网格
title('负数不正确的开立方','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
y=sign(x).*abs(x).^(1/3);              %函数向量
subplot(2,1,2)                         %建立子图
plot(x,y,'LineWidth',2)                %画线
grid on                                %加网格
title('负数正确的开立方','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标

%程序结束.周群益设计
