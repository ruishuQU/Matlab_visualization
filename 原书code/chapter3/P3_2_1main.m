%三角函数和导数的主程序
clear                                  %清除变量
syms x                                 %定义符号变量
y=sin(x)                               %符号函数
t='正弦';                              %标题的一部分
xm=2*pi;                               %最大横坐标
ym=1;                                  %最大纵坐标
P3_2_1fun(y,t,xm,ym)                   %调用函数文件求导数
P3_2_1fun(cos(x),'余弦',xm,ym)         %调用函数文件求导数
P3_2_1fun(tan(x),'正切',xm/2,5)        %调用函数文件求导数
P3_2_1fun(cot(x),'余切',xm/2,5)        %调用函数文件求导数
P3_2_1fun(sec(x),'正割',xm,5)          %调用函数文件求导数
P3_2_1fun(csc(x),'余割',xm,5)          %调用函数文件求导数

%程序结束.周群益设计
