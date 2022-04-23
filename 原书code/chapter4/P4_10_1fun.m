%(ax^2+c)不同常数的不同积分公式的函数文件
function fun(c)
xm=4;                                  %最大横坐标
dx=0.1;                                %横坐标间隔
x=1:dx:xm;                             %横坐标向量
y=1./(x.^2+c);                         %被积函数
s=cumtrapz(y)*dx;                      %梯形法求积分的近似值
i1=atan(x/sqrt(c))/sqrt(c);            %用反正切函数表示的积分
i2=log((x-sqrt(-c))./(x+sqrt(-c)))/2/sqrt(-c);%用对数函数表示的积分
figure                                 %创建图形窗口
plot(x,y,'LineWidth',2)                %画被积函数曲线
hold on                                %保持属性
plot(x,i1-i1(1),'x--','LineWidth',2)   %画反正切函数的积分曲线
plot(x,i2-i2(1),'or-.','LineWidth',2)  %画对数函数的积分曲线
plot(x,s,'gs','LineWidth',2)           %画梯形法曲线
title('1/(\itax\rm^2+\itc\rm)的两个不定积分公式的比较',...
    'FontSize',16)                     %加标题
xlabel('\itax','FontSize',16)          %加横坐标
grid on                                %加网格
legend('被积函数','反正切函数的积分','对数函数的积分','梯形法积分',0)%图例
text(x(1),0,['\itac\rm=',num2str(c)],'FontSize',16)%说明常数

%程序结束.周群益设计
