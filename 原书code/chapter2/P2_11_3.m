%多参数的根函数的极限
clear                                  %清除变量
rand('seed',0)                         %随机数种子清零
n=input('请输入参数n个数(例如2或10):');%键盘输入整数
% n=2;                                   %整数参考值
% n=10;                                  %整数参考值
a=rand(1,n);                           %随机数
syms x                                 %定义符号变量
fn=prod(x+a)^(1/n)-x                   %符号函数
l=limit(fn,x,inf)                      %符号极限
l=double(l)                            %化为双精度数
ll=sum(a)/n                            %数值极限

fn=inline(fn);                         %转化为内线函数
xm=100;                                %最大横坐标
xx=0:0.1:xm;                           %自变量向量
figure                                 %创建图形窗口
plot(xx,fn(xx),'LineWidth',2)           %画曲线
grid on                                %加网格
title('多参数的根函数的极限','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itf_n','FontSize',16)         %加纵坐标
hold on                                %保持属性
plot(xm,l,'o')                         %画极限点
text(xm,l,num2str(l),'FontSize',16)    %标记极限
%text(0,l-0.1,['\ita_n\rm:',num2str(a,4)],'FontSize',16)%显示参数
text(0,l*0.9,num2str(a'),'FontSize',16)%显示参数

%程序结束.周群益设计
