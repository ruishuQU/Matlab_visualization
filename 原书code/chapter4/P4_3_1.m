%对称三角函数的定积分
clear                                  %清除变量
syms x                                 %定义符号变量
y1=sin(x)/(sin(x)+sqrt(1-sin(x)^2))    %正弦复合函数的符号表达式
%y1=sin(x)/(sin(x)+cos(x))              %第1个函数的符号表达式
y2=cos(x)/(sqrt(1-cos(x)^2)+cos(x))    %余弦复合函数的符号表达式
%y2=cos(x)/(sin(x)+cos(x))              %第2个函数的符号表达式
xm1=0;                                 %积分下限
xm2=pi/2;                              %积分上限
s1=int(y1,xm1,xm2)                     %第1个函数的符号积分
s1=double(s1)                          %化为数值
s2=int(y2,xm1,xm2)                     %第2个函数的符号积分
s2=double(s2)                          %化为数值

f1=inline(y1)                          %第1个内线函数
f2=inline(y2)                          %第2个内线函数
x=linspace(xm1,xm2);                   %横坐标向量
figure                                 %创建图形窗口
fill([x,xm2,xm1],[f1(x),0,0],'y')      %画填色图
title('对称三角复合函数的定积分','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
hold on                                %保持属性
fill([x,xm2,xm1],[f2(x),0,0],'c')      %画填色图
grid on                                %加网格
alpha(0.5)                             %平面半透明
legend(['正弦复合函数的定积分\itS\rm_{sin}=',num2str(s1)],...
    ['余弦复合函数的定积分\itS\rm_{cos}=',num2str(s1)],0)%加图例

y=sym('1/(x+sqrt(1-x^2))')             %符号表达式
xm2=1;                                 %积分上限
s1=int(y,xm1,xm2)                      %函数的符号积分
f=inline(y)                            %内线函数
s2=quad(f,xm1,xm2)                     %求数值积分
dx=0.01;                               %横坐标间隔
x=0:dx:1;                              %横坐标向量
y=f(x);                                %纵坐标向量
s3=trapz(y)*dx                         %用梯形法求积分
figure                                 %创建图形窗口
fill([x,xm2,xm1],[f(x),0,0],'y')       %画填色图
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\itay','FontSize',16)          %加纵坐标
title('含根式的定积分','FontSize',16)  %加标题
grid on                                %加网格
text(0.5,0.5,['\itS\rm=',num2str(s2)],'FontSize',16)%显示结果

%程序结束.周群益设计
