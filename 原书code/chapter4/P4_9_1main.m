%含(ax-b)^(1/2)的不定积分的主程序
clear                                  %清除变量
b=-2;                                  %取常数
syms x                                 %定义符号变量
y=sqrt(x-b);                           %含有的函数
in=2/3*y^3;                            %第一个手工解析解
tit='\itx^n\rm(\itax-b\rm)^{1/2}';     %主要标题
for n=0:5                              %按自然数循环
    yn=x^n*y;                          %被积符号函数
    P4_8_1fun(yn,n,b,in,tit)           %调用函数文件
    in=2/(3+2*(n+1))*(x^(n+1)*y^3+(n+1)*b*in);%下一个积分
end                                    %结束循环

%程序结束.周群益设计
