%函数的左右极限的主程序
clear                                  %清除变量
syms x                                 %定义符号变量
f=atan(1/(1-x));                       %符号函数
x0=1;                                  %极限的坐标
P2_17_1fun(f,x0)                       %调用函数文件求极限
P2_17_1fun(1/(1+exp(1/x)),0)           %调用函数文件求极限

%程序结束.周群益设计
