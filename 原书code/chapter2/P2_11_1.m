%一个参数和无参数的根函数的极限
clear                                  %清除变量
syms x a                               %定义符号变量
f=(sqrt(x)-sqrt(a)+sqrt(x-a))/sqrt(x^2-a^2);%符号函数
l=limit(f,x,a,'Right')                 %符号极限
aa=0.5:0.5:3;                          %参数向量
xm=4;                                  %最大横坐标
xx=0:0.002:xm;                         %自变量向量
[A,X]=meshgrid(aa,xx);                 %参数和自变量矩阵 
f=inline(f);                           %转化为内线函数
F=f(A,X);                              %函数矩阵
F(imag(F)~=0)=NaN;                     %复数改为非数
figure                                 %创建图形窗口
plot(xx,F,'LineWidth',2)               %画曲线族
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itf','FontSize',16)           %加纵坐标
title('含参数的根函数的极限','FontSize',16)%加标题
grid on                                %加网格
legend([repmat('\ita\rm=',length(aa),1),num2str(aa')])%加图例
ll=subs(l,a,aa);                       %求极限值
hold on                                %保持属性
plot(aa,ll,'o')                        %画极限点
text(aa,ll,num2str(ll'),'FontSize',16) %显示极限文本
a0=0.3:0.1:4;                          %更密的参数向量
ll=subs(l,a,a0);                       %求极限值
plot(a0,ll,'-.','LineWidth',2)         %画极限分布线
f=(sqrt(x)-1+sqrt(x-1))/(sqrt(x^2-1))  %符号函数
x0=1;                                  %极限的横坐标
l=limit(f,x,x0)                        %符号极限
l=double(l)                            %化为数值
x=x0:0.001:x0+1;                       %自变量向量
f=inline(f);                           %转化为内线函数
%f=(sqrt(x)-1+sqrt(x-1))./(sqrt(x.^2-1));%函数
figure                                 %创建图形窗口
plot(x,f(x),'LineWidth',2)             %画曲线
title('约化的根函数的极限','FontSize',16)%加标题
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\ita\rm^{1/2}\itf','FontSize',16)%加纵坐标
grid on                                %加网格
hold on                                %保持属性
plot(x0,l,'o')                         %画极限
text(x0,l,num2str(l),'FontSize',16)    %标记极限

%程序结束.周群益设计
