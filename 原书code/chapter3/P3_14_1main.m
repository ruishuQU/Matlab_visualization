%函数的麦克劳林展开式的主程序
clear                                  %清除变量
syms x n                               %定义符号变量
y=sin(x);                              %函数的符号表达式
yn=(-1)^(n-1)*x^(2*n-1)/factorial(2*n-1)%通项的符号表达式
a=-pi;                                 %横坐标下限
b=pi;                                  %横坐标上限
ym1=-2;                                %纵坐标下限
ym2=2;                                 %纵坐标上限
tit='正弦';                            %函数名
P3_14_1fun(y,yn,a,b,ym1,ym2,tit)       %调用函数文件
yn=(-1)^(n-1)*x^(2*n-2)/factorial(2*n-2)%通项的符号表达式
P3_14_1fun(cos(x),yn,a,b,ym1,ym2,'余弦')%调用函数文件
P3_14_1fun(exp(x),x^(n-1)/factorial(n-1),-4,4,-2,20,'指数')%调用函数文件
P3_14_1fun(log(1+x),(-1)^(n-1)*x^n/n,-1,1,-4,1,'对数')%调用函数文件
%P3_14_1fun(log(1-x),-x^n/n,-1,1,-4,1,'对数')%调用函数文件
%P3_14_1fun(log((1+x)/(1-x)),2*x^(2*n-1)/(2*n-1),-1,1,-5,5,'对数')%调用函数文件

%程序结束.周群益设计
