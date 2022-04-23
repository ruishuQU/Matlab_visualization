%超越方程的解
clear                                  %清除变量
xm=12;                                 %最大自变量
x=0:0.01:xm;                           %自变量
f=inline('10*log10(x)-x');             %定义内线函数
figure                                 %创建图形窗口
plot(x,f(x),'LineWidth',2)             %画线
fs=16;                                 %字体大小
xlabel('\itx','FontSize',fs)           %加横坐标
ylabel('\ity','FontSize',fs)           %加纵坐标
title('超越方程的解','FontSize',fs)    %加标题
grid on                                %加网格
x1=fzero(f,1)                          %求第1个零点
x2=fzero(f,10)                         %求第2个零点
hold on                                %保持属性
plot(x1,0,'o',x2,0,'o')                %画零点
axis([0,xm,-5,5])                      %设置曲线范围
text([x1,x2],[0,0],num2str([x1;x2]),'FontSize',fs)%标记零点

f=inline('10*log10(x)');               %定义内线函数
figure                                 %创建图形窗口
plot(x,x,x,f(x),'LineWidth',2)         %画线
xlabel('\itx','FontSize',fs)           %加横坐标
ylabel('\ity','FontSize',fs)           %加纵坐标
title('超越方程的解','FontSize',fs)    %加标题
grid on                                %加网格
y1=f(x1);                              %第1个交点纵坐标
y2=f(x2);                              %第2个交点纵坐标
hold on                                %保持属性
plot(x1,y1,'o',x2,y2,'o')              %画交点
axis([0,xm,0,xm])                      %设置曲线范围
text([x1,x2],[y1,y2],num2str([x1;x2]),'FontSize',fs)%标记交点

%程序结束.周群益设计
