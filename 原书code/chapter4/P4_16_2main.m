%多级心脏线的面积和长度的主程序
clear                                  %清除变量
P4_16_2fun(1)                          %用1调用函数文件
P4_16_2fun(2)                          %用2调用函数文件
P4_16_2fun(3)                          %用3调用函数文件
P4_16_2fun(4)                          %用4调用函数文件
%----------------------------------------------------------
syms t n                               %定义符号变量
r=2*cos(t/n)^n;                        %符号极径
sn=int(r^2/2,0,pi*n)                   %求符号积分
dln=sqrt(r^2+diff(r)^2);               %符号被积函数
ln=int(dln,0,pi*n)                     %求符号积分
nm=10;                                 %最大整数
n=1:nm;                                %整数向量
sn=subs(sn,'n',n);                     %替换整数
sn=double(sn);                         %化为双精度数
ln=subs(ln,'n',n);                     %替换整数
ln=double(ln);                         %化为双精度数
figure                                 %创建图形窗口
subplot(2,1,1)                         %取子图
plot(n,sn,'*-','LineWidth',2)          %画定积分曲线
title('多次心脏线的面积','FontSize',16)%加标题
xlabel('\itn','FontSize',16)           %加横坐标
ylabel('\itS_n/a\rm^2','FontSize',16)  %加纵坐标
text(n,sn,num2str(sn'),'FontSize',16)  %加值
sn=4*n.*cumprod(2*n-1)./cumprod(2*n)*pi/2;%用解析解求积分值
hold on                                %保持图像
plot(n,sn,'or')                        %画曲线
legend('符号解','解析解',2)            %加图例
grid on                                %加网格
subplot(2,1,2)                         %取子图
plot(n,ln,'*-','LineWidth',2)          %画定积分曲线
title('多次心脏线的长度','FontSize',16)%加标题
xlabel('\itn','FontSize',16)           %加横坐标
ylabel('\itL_n/a','FontSize',16)       %加纵坐标
text(n,ln,num2str(ln'),'FontSize',16)  %加值
n=3:2:nm;                              %奇数向量
ln=4*n.*cumprod(n-2)./cumprod(n-1)*pi/2;%用解析解求积分值
ln=[2*pi,ln];                          %插入第一个值
hold on                                %保持图像
plot([1,n],ln,'sg')                    %画奇数解析解曲线
n=4:2:nm;                              %偶数向量
ln=4*n.*cumprod(n-2)./cumprod(n-1);    %用解析解求积分值
ln=[8,ln];                             %插入第一个值
plot([2,n],ln,'dr')                    %画偶数解析解曲线
legend('符号解','偶数解析解','奇数解析解',2)%加图例
grid on                                %加网格

%程序结束.周群益设计
