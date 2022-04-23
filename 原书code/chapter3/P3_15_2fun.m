%不定式的极限的函数文件
function fun(y,xl,t)
syms x                                 %定义符号变量
l=limit(y,x,xl,'Right')                %求符号极限
l=double(l);                           %求数值极限
f=inline(y);                           %化为内线函数
dx=0.001;                              %间隔
x=0:dx:xl+1;                           %自变量向量
y=f(x);                                %函数
figure                                 %创建图形窗口
plot(x,y,'LineWidth',2)                %画函数曲线
title(['(',t,')型不定式的极限'],'FontSize',16)%加标题
grid on                                %加网格
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
hold on                                %保持属性
plot(xl,l,'o','LineWidth',2)           %画极限
text(xl,l,num2str(l),'FontSize',16)    %显示极限文本

%程序结束.周群益设计
