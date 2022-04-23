%简单函数的定积分
clear                                  %清除变量
y=sym('(x+2)/sqrt(2*x+1)')             %函数的符号表达式
xm1=0;                                 %积分下限
xm2=4;                                 %积分上限
s1=int(y,xm1,xm2)                      %函数的符号积分
f=inline(y)                            %内线函数
s2=quad(f,xm1,xm2)                     %求数值积分
dx=0.1;                                %横坐标间隔
x=xm1:dx:xm2;                          %横坐标向量
y=f(x);                                %纵坐标向量
s3=trapz(y)*dx                         %用梯形法求积分
figure                                 %创建图形窗口
fill([x,xm2,xm1],[y,0,0],'y')          %画填色图
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
title('简单函数的定积分','FontSize',16)%加标题
grid on                                %加网格
s1=double(s1)                          %化为数值
text(xm1,1,['\itS\rm=',num2str(s1)],'FontSize',16)%显示结果

%程序结束.周群益设计
