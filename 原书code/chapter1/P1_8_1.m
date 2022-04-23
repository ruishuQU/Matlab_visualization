%双曲函数
clear                                  %清除变量
xm=2;                                  %最大自变量
x=-xm:0.01:xm;                         %自变量向量
y=exp(x)/2;                            %函数向量
figure                                 %创建图形窗口
plot(x,sinh(x),x,cosh(x),'--',x,y,':',-x,y,'-.','LineWidth',2)%画函数曲线
title('双曲正弦和双曲余弦曲线','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
grid on                                %加网格
legend('sinh','cosh',4)                %图例

figure                                 %创建图形窗口
plot(x,tanh(x),x,coth(x),'--','LineWidth',2)%画函数曲线
title('双曲正切和双曲余切曲线','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
grid on                                %加网格
legend('tanh','coth',4)                %图例
ym=4;                                  %最大纵坐标
axis([-xm,xm,-ym,ym])                  %设置曲线范围

figure                                 %创建图形窗口
plot(x,sech(x),x,csch(x),'--','LineWidth',2)%画函数曲线
title('双曲正割和双曲余割曲线','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
grid on                                %加网格
legend('sech','csch',4)                %图例
axis([-xm,xm,-ym,ym])                  %设置曲线范围

%程序结束.周群益设计
