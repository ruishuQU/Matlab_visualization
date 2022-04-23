%不定式在无限远处的极限的函数文件
function fun(y,xm,t)
syms x                                 %定义符号变量
l=limit(y,x,Inf)                        %求符号极限
l=double(l);                           %求数值极限
f=inline(y);                           %符号函数化为内线函数
dx=0.01;                               %间隔
x=1:dx:xm;                             %自变量向量
y=f(x);                                %函数值
figure                                 %创建图形窗口
plot(x,y,'LineWidth',2)                %画函数曲线
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
title(['(',t,')型不定式在无穷远处的极限'],'FontSize',16)%加标题
grid on                                %加网格
hold on                                %保持属性
plot(xm,l,'o','LineWidth',2)           %画极限
text(xm,l,num2str(l),'FontSize',16)    %显示极限文本

%程序结束.周群益设计
