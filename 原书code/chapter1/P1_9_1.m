%三角函数与双曲函数的关系
clear                                  %清除变量
xm=6;                                  %最大横坐标
x=linspace(-xm,xm);                    %自变量向量
figure                                 %开创图形窗口
plot(x,sin(x),x,cos(x),'--','LineWidth',2)%画正弦和余弦曲线
hold on                                %保持属性
plot(x,-i*sinh(i*x),'o',x,cosh(i*x),'s')%画双曲正弦和双曲余弦曲线
legend('sin','cos')                    %图例
axis([-xm,xm,-1,1])                    %设置曲线范围
grid on                                %加网格
title('正弦和余弦函数与双曲正弦和双曲余弦函数的关系','FontSize',16)%加标题
text(-xm,0,'圈和方形表示双曲函数','FontSize',16)%加说明

figure                                 %开创图形窗口
plot(x,tan(x),x,cot(x),'--','LineWidth',2)%画正切和余切曲线
hold on                                %保持属性
plot(x,-i*tanh(i*x),'o',x,i*coth(i*x),'s')%画双曲正切和双曲余切曲线
legend('tan','cot')                    %图例
axis([-xm,xm,-10,10])                  %设置曲线范围
grid on                                %加网格
title('正切和余切函数与双曲正切和双曲余切函数的关系','FontSize',16)%加标题
text(-xm,0,'圈和方形表示双曲函数','FontSize',16)%加说明

%程序结束.周群益设计
