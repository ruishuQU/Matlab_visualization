%自变量与正弦复合函数乘积的定积分的主程序
clear                                  %清除变量
P4_3_2fun(0)                           %用0调用函数文件
P4_3_2fun(1)                           %用1调用函数文件
P4_3_2fun(2)                           %用2调用函数文件
P4_3_2fun(3)                           %用3调用函数文件
%----------------------------------------------------------
syms x n                               %定义符号变量
yn=pi/2*sin(x)^n/(2-sin(x)^2);         %正弦复合函数
in=int(yn,0,pi)                        %求符号积分
n=0:10;                                %整数向量
in=subs(in,'n',n);                     %替换整数
in=double(in);                         %化为双精度数
figure                                 %创建图形窗口
plot(n,in,'*-','LineWidth',2)          %画定积分曲线
title('自变量与正弦复合函数乘积的各级定积分','FontSize',16)%加标题
xlabel('\itn','FontSize',16)           %加横坐标
ylabel('\itI_n','FontSize',16)         %加纵坐标
text(n,in,num2str(in'),'FontSize',16)  %加积分值
grid on                                %加网格

%程序结束.周群益设计
