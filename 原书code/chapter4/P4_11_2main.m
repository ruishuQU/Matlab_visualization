%含有(x^2+a^2)^(1/2)的不定积分(不计积分常数)
clear                                  %清除变量
syms x a positive                      %定义符号变量
f=sqrt(1+x^2);                         %含有的约化函数
y=1/f;                                 %被积函数
tit='1/(\ita\rm^2+\itx\rm^2)^{1/2}';   %主要标题
P4_11_2fun(y,tit)                      %调用函数文件
tit='(\ita\rm^2+\itx\rm^2)^{1/2}';     %主要标题
P4_11_2fun(f,tit)                      %调用函数文件

%程序结束.周群益设计
