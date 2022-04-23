%函数和渐近线的主程序
clear                                  %清除变量
syms x                                 %定义符号变量
f=log(1+exp(x))                        %符号函数
t='指数-对数复合';                     %标题的一部分
P2_20_1fun(f,t)                        %调用函数文件
P2_20_1fun(x*exp(x)/(exp(x)-1),'指数复合')%调用函数文件
plot(0,1,'o')                          %补画极限

%程序结束.周群益设计
