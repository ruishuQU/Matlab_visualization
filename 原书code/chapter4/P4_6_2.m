%函数积分的极限
clear                                  %清除变量
syms x                                 %定义符号变量
y=sin(x^2)                             %函数的符号表达式
s=int(y,0,x)                           %函数的符号积分
d=s/x^3                                %求比值
l=limit(d,0)                           %求极限
l=double(l);                           %化为数值

f=inline(y)                            %内线函数
xm=1;                                  %最大横坐标
dx=0.001;                              %横坐标间隔
x=0:dx:xm;                             %横坐标向量
y=f(x);                                %纵坐标向量
s=cumtrapz(y)*dx;                      %用累积梯形法求积分

figure                                 %创建图形窗口
fill([x,xm],[y,0],'y')                 %画填色图
hold on                                %保持属性
plot(x,s,'--',x,x.^3,':',x,s./x.^3,'-.','LineWidth',2)%画线
title('含上限是变量的定积分的商的极限','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
legend('被积函数包围面','上限是变量的定积分','分母','商',2)%加图例
grid on                                %加网格
hold on                                %保持属性
plot(0,l,'o')                          %画极限
text(0,l,num2str(l),'FontSize',16)     %显示极限

%程序结束.周群益设计
