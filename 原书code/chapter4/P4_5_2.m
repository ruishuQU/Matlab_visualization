%瑕积分
clear                                  %清除变量
y=sym('1/sqrt(x*(1-x))')               %被积函数的符号表达式
xm1=0;                                 %积分下限
xm2=1;                                 %积分上限
s=int(y,xm1,xm2)                       %函数的符号积分
s=double(s)                            %化为数值
f=inline(y)                            %内线函数
dx=0.01;                               %横坐标间隔
x=xm1:dx:xm2;                          %横坐标向量
x(1)=eps;                              %第一个值0改为小量
x(end)=xm2-eps;                         %最后一个值1改小一点
figure                                 %创建图形窗口
fill([x,xm2,xm1],[f(x),0,0],'y')       %画填色图
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
title('瑕积分','FontSize',16)          %加标题
grid on                                %加网格
text(xm1,2,['\itS\rm=',num2str(s)],'FontSize',16)%显示结果
axis([xm1,xm2,0,10])                   %设置曲线范围

%程序结束.周群益设计
