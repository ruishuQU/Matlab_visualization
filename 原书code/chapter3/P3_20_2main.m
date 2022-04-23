%极坐标方程和渐屈线的主程序
clear                                  %清除变量
syms t alpha                           %定义符号变量
r=exp(alpha*t);                        %极径的符号表达式
alpha=0.2;                             %系数
thm=2*pi;                              %最大极角
tit='对数螺线';                        %部分标题
P3_20_2fun(thm,r,alpha,tit)            %调用函数文件画极坐标曲线和渐屈线
P3_20_2fun(4*pi,r,0.1,tit)             %调用函数文件画极坐标曲线和渐屈线

%程序结束.周群益设计
