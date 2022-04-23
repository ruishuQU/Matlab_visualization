%反比正弦函数和调制函数
clear                                  %清除变量
xm=5;                                  %最大自变量
x=-xm:0.02:xm;                         %自变量向量
y=sin(pi./x);                          %函数
figure                                 %创建图形窗口
plot(x,y,'LineWidth',2)                %画线
title('反比正弦函数','FontSize',16)    %加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itf','FontSize',16)           %加纵坐标
grid on                                %加网格
figure                                 %创建图形窗口
plot(x,x.*y,x,x,'--',x,-x,'--','LineWidth',2)%画线
title('正比调制的反比正弦函数','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itf','FontSize',16)           %加纵坐标
grid on                                %加网格
hold on                                %保持属性
plot([-xm,xm],[pi,pi],'-.','LineWidth',2)%画渐近线
figure                                 %创建图形窗口
plot(x,y./x,x,1./x,'--',x,-1./x,'--','LineWidth',2)%画线
title('反比调制的反比正弦函数','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itf','FontSize',16)           %加纵坐标
grid on                                %加网格
axis([-xm,xm,-5,5])                    %设置曲线范围

%程序结束.周群益设计
