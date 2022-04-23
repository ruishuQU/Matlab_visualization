%无穷积分的主程序
clear                                  %清除变量
y=sym('1/(1+x^2)')                     %函数的符号表达式
i1=2*int(y,0,Inf)                      %函数的符号积分
i1=double(i1)                          %化为数值
f=inline(y)                            %内线函数
i2=2*quad(f,0,1/eps)                   %求数值积分
dx=0.001;                              %横坐标间隔
xm=15;                                 %最大横坐标
x=0:dx:xm;                             %横坐标向量
yn=f(x);                               %纵坐标向量
i3=2*trapz(yn)*dx                      %用梯形法求积分
% figure                                 %创建图形窗口
% fill([-fliplr(x),x,xm,-xm],[fliplr(yn),yn,0,0],'y')%画填色图
% title('无穷积分','FontSize',16)        %加标题
% xlabel('\itx','FontSize',16)           %加横坐标
% ylabel('\ity','FontSize',16)           %加纵坐标
% grid on                                %加网格
% text(0,0,['\itI\rm_0=',num2str(i1)],'FontSize',16)%显示结果

P4_5_1fun(-1)                          %调用函数文件
axis([0,10,0,2])                       %设置曲线范围
P4_5_1fun(0)                           %调用函数文件
P4_5_1fun(1)                           %调用函数文件
P4_5_1fun(2)                           %调用函数文件
syms x n                               %定义符号变量
yn=x^(n/2)/(1+x^(n+2));                %被积函数
jn=int(yn,0,Inf)                       %求符号积分(无精确的解析解)
nn=-1:10;                              %整数向量
jn=subs(jn,n,nn);                      %替换整数
figure                                 %创建图形窗口
plot(nn,jn,'x-','LineWidth',2)         %画积分曲线
xlabel('\itn','FontSize',16)           %加横坐标
ylabel('\itJ_n','FontSize',16)         %加纵坐标
title('各级无穷积分','FontSize',16)    %加标题
grid on                                %加网格
syms t                                 %定义符号变量
yn=2/(n+2)/(1+t^2);                    %被积函数
jn=int(yn,0,Inf)                       %求符号积分
jn=subs(jn,n,nn);                      %替换整数
hold on                                %保持属性
plot(nn,jn,'o','LineWidth',2)          %再画曲线
legend('变换前的积分','变换后的积分')  %加图例
text(nn,jn,num2str(jn'),'FontSize',12) %加积分值

%程序结束.周群益设计
