%有递推公式的正切偶幂函数的定积分
clear                                  %清除变量
syms x n                               %定义符号变量
yn=tan(x)^(2*n);                       %被积的符号函数
a=0;                                   %积分下限
b=pi/4;                                %积分上限
jn=int(yn,a,b)                         %计算符号定积分
nm=40;                                 %最大整数
n=0:nm;                                %自然数向量
jn=subs(jn,'n',n);                     %符号替换为数值
jn=double(jn);                         %化为数值
figure                                 %创建图形窗口
plot(n,jn,'*-','LineWidth',2,'MarkerSize',10)%画曲线
title('正切偶幂函数的定积分','FontSize',16)%标记标题
xlabel('\itn','FontSize',16)           %标记横坐标
ylabel('\itJ_n','FontSize',16)         %标记纵坐标
grid on                                %加网格
n=1:nm;                                %自然数向量
jn=(-1).^n.*(pi/4+cumsum((-1).^n./(2*n-1)));%求积分值
jn=[pi/4,jn];                          %插入第一个值
hold on                                %保持图像
plot([0,n],jn,'or','MarkerSize',10)    %画曲线
legend('符号解','解析解')              %加图例

%程序结束.周群益设计
