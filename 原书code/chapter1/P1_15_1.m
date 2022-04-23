%复合函数
clear                                  %清除变量
syms x                                 %定义符号变量
f=atan(x)                              %符号初等函数f(x)
g=2.^(-x)                              %符号初等函数g(x)
fg=subs(f,x,g)                         %符号复合函数f(g(x))
gf=subs(g,x,f)                         %符号复合函数g(f(x))
f=inline(f);                           %内线初等函数f
g=inline(g);                           %内线初等函数g
% f=inline('atan(x)');                   %初等函数f
% g=inline('2.^(-x)');                   %初等函数g
xm=20;                                 %最大横坐标
x=-xm:0.1:xm;                          %自变量向量
figure                                 %创建图形窗口
plot(x,f(x),'--',x,g(x),'-.',x,f(g(x)),x,g(f(x)),':','LineWidth',2)%画函数曲线
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
title('复合函数','FontSize',16)        %加标题
axis([-xm,xm,-2,3])                    %设置曲线范围
legend('\itf\rm(\itx\rm)','\itg\rm(\itx\rm)',...
    '\itf\rm(\itg\rm(\itx\rm))','\itg\rm(\itf\rm(\itx\rm))')%图例
ym=2^(pi/2);                           %值域上限
hold on                                %保持属性
plot(-xm,ym,'o',xm,1/ym,'s','LineWidth',2)%画上下限
text(-xm,ym,num2str(ym),'FontSize',16) %加上限说明
text(xm,1/ym,num2str(1/ym),'FontSize',16)%加下限说明

%程序结束.周群益设计
