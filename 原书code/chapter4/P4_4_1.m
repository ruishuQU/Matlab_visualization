%有递推公式的正弦和余弦函数幂的定积分
clear                                  %清除变量
syms x n                               %定义符号变量
yn=sin(x)^n;                           %被积的符号函数
%yn=cos(x)^n;                           %被积的符号函数
a=0;                                   %积分下限
b=pi/2;                                %积分上限
in=int(yn,a,b)                         %计算符号定积分
nm=40;                                 %最大整数
n=0:nm;                                %自然数向量
in=subs(in,'n',n);                     %符号替换为数值
in=double(in);                         %化为数值
figure                                 %创建图形窗口
plot(n,in,'*-','LineWidth',2,'MarkerSize',10)%画曲线
xlabel('\itn','FontSize',16)           %标记横坐标
ylabel('\itI_n','FontSize',16)         %标记纵坐标
title('正弦和余弦幂函数的定积分','FontSize',16)%标记标题
grid on                                %加网格
n=2:2:nm;                              %偶数向量
in=cumprod(n-1)./cumprod(n)*pi/2;      %用解析解求积分值
in=[pi/2,in];                          %插入第一个值
hold on                                %保持图像
plot([0,n],in,'or','MarkerSize',10)    %画偶数解析解曲线
n=3:2:nm;                              %奇数向量
in=cumprod(n-1)./cumprod(n);           %用解析解求积分值
in=[1,in];                             %插入第一个值
plot([1,n],in,'sg','MarkerSize',10)    %画奇数解析解曲线
legend('符号解','偶数解析解','奇数解析解')%加图例

%程序结束.周群益设计
