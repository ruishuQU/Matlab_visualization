%含(x^2+a^2)的不定积分的主程序
clear                                  %清除变量
syms x                                 %定义符号变量
yn1=x^2+1;                             %含有的函数
in=atan(x);                            %第一个手工解析解
tit1='1/(\itx\rm^2+\ita\rm^2)\it^n\rm';%主要标题
yn2=x^2-1;                             %含有的函数
jn=log((x-1)/(x+1))/2;                 %第一个手工解析解
tit2='1/(\itx\rm^2-\ita\rm^2)\it^n\rm';%主要标题
for n=1:4                              %按自然数循环
    yn=1/yn1^n;                        %被积符号函数
    P4_11_1fun(yn,n,in,tit1)           %调用函数文件
    in=(x/yn1^n+(2*n-1)*in)/2/n;       %下一个积分
    yn=1/yn2^n;                        %被积符号函数
    P4_11_1fun(yn,n,jn,tit2)           %调用函数文件
    jn=-(x/yn2^n+(2*n-1)*jn)/2/n;      %下一个积分
end                                    %结束循环

%程序结束.周群益设计
