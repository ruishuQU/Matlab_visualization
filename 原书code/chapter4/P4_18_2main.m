%参数方程曲线与横轴之间的平面绕纵轴旋转的体积和表面积的主程序
clear                                  %清除变量
syms t                                 %定义符号变量
x=t-sin(t);                            %符号横坐标
z=1-cos(t);                            %符号纵坐标
t1=0;                                  %最小参数
t2=2*pi;                               %最大参数
tit='摆线';                            %标题的主要部分
P4_18_2fun(x,z,t1,t2,tit)             %调用函数文件

%程序结束.周群益设计
