%幂函数和含(ax-b)的不定积分的主程序
clear                                  %清除变量
xm=2;                                  %最大横坐标
dx=0.1;                                %横坐标间隔
x=1:dx:xm;                             %横坐标向量
nm=3;                                  %最大整数
n=-nm:nm;                              %整数向量
n(n==-1)=-1+eps^(1/2);                 %-1加一个小量
%n(n==-1)=-1+eps^(1/2);                 %-1减一个小量(都行)
[N,X]=meshgrid(n,x);                   %整数和横坐标矩阵
Sn=X.^(N+1)./(N+1);                    %基本原函数矩阵
m=size(x);                             %横坐标向量大小
Cn=ones(m)'*Sn(1,:);                   %积分常数矩阵
Sn=Sn-Cn;                              %扣除常数得基本特解
figure                                 %创建图形窗口
plot(x,Sn,'-*','LineWidth',2)          %画基本特解曲线族
title('幂函数的不定积分的基本特解和验证','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itI_n','FontSize',16)         %加纵坐标
legend([repmat('\itn\rm=',length(n),1),num2str(n')],2)%加图例
grid on                                %加网格

syms x n                               %定义符号变量
yn=x^n                                 %被积符号函数
fyn=inline(yn);                        %被积符号函数的内线函数
Yn=fyn(N,X);                           %被积函数矩阵
Sn=cumtrapz(Yn)*dx;                    %累加梯形法求积分
hold on                                %保持属性
plot(X,Sn,'s','MarkerSize',10)         %画方形表示数值解
sn=int(yn)                             %求符号基本原函数
Fn=subs(sn,{x,n},{X,N});               %基本原函数矩阵
Cn=ones(m)'*Fn(1,:);                   %积分常数矩阵
Fn=Fn-Cn;                              %扣除常数得基本特解
plot(X,Fn,'o','MarkerSize',8)          %画圈表示的符号解
txt={'星号表示手工解析解','方形表示梯形法的数值解','圈表示符号解'};%字符串
text(1,1.5,txt,'FontSize',16)          %加说明

b=-2;                                  %取常数
y=x-b;                                 %含有的函数
n=0;                                   %取整数
yn=1/x^n/y;                            %被积符号函数
jn=log(y);                             %手工解析解
tit='1/\itx^n\rm/(\itax-b\rm)';        %主要标题
P4_8_1fun(yn,n,b,jn,tit)               %调用函数文件
P4_8_1fun(1/x/y,1,b,log(y/x)/b,tit)    %调用函数文件
P4_8_1fun(1/x^2/y,2,b,log(y/x)/b^2+1/b/x,tit)%调用函数文件

%程序结束.周群益设计
