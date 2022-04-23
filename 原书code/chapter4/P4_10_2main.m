%含(ax^2+c)的不定积分的主程序
clear                                  %清除变量
c=4;                                   %取常数
syms x                                 %定义符号变量
y=x^2+c;                               %含有的函数
n=1;                                   %取整数
yn=x^n/y;                              %被积符号函数
sn=log(x^2+c)/2;                       %手工解析解
tit='\itx^n\rm/(\itax\it^2+\itc\rm)';  %主要标题
P4_8_1fun(yn,n,c,sn,tit)               %调用函数文件
i0=atan(x/sqrt(c))/sqrt(c);            %取反正切函数表示的0级不定积分
%i0=log((x-sqrt(-b))./(x+sqrt(-b)))/2/sqrt(-b);%用对数函数表示的0级不定积分
P4_8_1fun(x^2/y,2,c,x-c*i0,tit)        %调用函数文件
P4_8_1fun(x^(-1)/y,-1,c,log(x^2/y)/2/c,tit)%调用函数文件
P4_8_1fun(x^(-2)/y,-2,c,-1/c/x-i0/c,tit)%调用函数文件
P4_8_1fun(1/y,0,c,i0,tit)              %调用函数文件

%程序结束.周群益设计
