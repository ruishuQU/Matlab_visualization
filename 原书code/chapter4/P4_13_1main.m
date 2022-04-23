%含正弦函数的参数不同的积分公式的曲线的主程序
clear                                  %清除变量
b=0.8;                                 %小于1的常数
xm=2;                                  %最大横坐标
dx=0.05;                               %横坐标间隔
x=0.5:dx:xm;                           %横坐标向量
y=1./(b*sin(x));                       %被积函数
s=cumtrapz(y)*dx;                      %梯形法求积分的近似值
i=log(tan(x/2))/b;                     %积分
figure                                 %创建图形窗口
plot(x,y,'LineWidth',2)                %画被积函数曲线
hold on                                %保持属性
plot(x,i-i(1),'x--',x,s,'gs','LineWidth',2)%画曲线
title('1/(\itb\rmsin\itx\rm)的不定积分','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
text(x(1),0,['\itb\rm=',num2str(b)],'FontSize',16)%说明常数
legend('被积函数','积分的解析解','梯形法积分',0)%加图例

P4_13_1fun(b)                          %用小于1的常数调用函数文件
P4_13_1fun(1.2)                        %用大于1的常数调用函数文件
P4_13_1fun(1+eps)                      %用等于1的常数调用函数文件

%程序结束.周群益设计
