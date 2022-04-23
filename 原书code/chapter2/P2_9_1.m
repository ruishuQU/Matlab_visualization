%根函数极限
clear                                  %清除变量
x0=3;                                  %极限的横坐标
syms x                                 %定义符号变量
f=(sqrt(x+13)-2*sqrt(x+1))/(x^2-9)     %符号函数
l=limit(f,x,x0)                        %符号极限
l=double(l)                            %化为数值

f=inline(f);                           %符号函数转化为内线函数
x=x0-1:0.01:x0+1;                      %自变量向量
figure                                 %创建图形窗口
plot(x,f(x),'LineWidth',2)             %画曲线
title('根函数极限','FontSize',16)      %加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itf','FontSize',16)           %加纵坐标
grid on                                %加网格
hold on                                %保持属性
plot(x0,l,'o')                         %画极限
text(x0,l,num2str(l),'FontSize',16)    %标记极限

%程序结束.周群益设计
