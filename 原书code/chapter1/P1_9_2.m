%反双曲函数与反三角函数的关系
clear                                  %清除变量
xm=4;                                  %最大横坐标
x=linspace(-xm,xm,40);                 %自变量向量
figure                                 %开创图形窗口
plot(x,asinh(x),x, -i*asin(i*x),'o','LineWidth',2)%画反双曲正弦和反正弦曲线
x=linspace(1,xm,20);                  %自变量向量
hold on                                %保持属性
plot(x,acosh(x),'--', x,-i*acos(x),'s',...
    x,-acosh(x),'--', x,i*acos(x),'s','LineWidth',2)%画反余弦正弦和反余弦曲线
title('反双曲正弦和反双曲余弦函数与反正弦和反余弦函数的关系','FontSize',16)%加标题
grid on                                %加网格
text(-xm,0,'圈和方形表示反三角函数','FontSize',16)%加说明
x=linspace(-1,1,40);                   %自变量向量
figure                                 %开创图形窗口
plot(x,atanh(x),x,-i*atan(i*x),'o','LineWidth',2)%画反双曲正切和反正切曲线
x=linspace(1,xm,40);                   %自变量向量
hold on                                %保持属性
plot(x,acoth(x),'--',x,i*acot(i*x),'s',...
    -x,-acoth(x),'--',-x,-i*acot(i*x),'s','LineWidth',2)%画反双曲余切和反余切曲线
title('反双曲正切和反双曲余切函数与反正切和反余切函数的关系','FontSize',16)%加标题
grid on                                %加网格
text(-xm,0,'圈和方形表示反三角函数','FontSize',16)%加说明

%程序结束.周群益设计
