%含正弦函数的参数不同的积分公式的曲线的函数文件
function fun(b)
c=sqrt(1-b^2)                          %综合常数
xm=2;                                  %最大横坐标
dx=0.05;                               %横坐标间隔
x=0:dx:xm;                             %横坐标向量
u=tan(x/2);                            %中间变量
i1=2/c*atan((u+b)/c);                  %用反正切函数表示的积分
c=c*i                                  %新综合常数
i2=1/c*log((u+b-c)./(u+b+c));          %用对数函数表示的积分
y=1./(1+b*sin(x));                     %被积函数
s=cumtrapz(y)*dx;                      %梯形法求积分的近似值
figure                                 %创建图形窗口
plot(x,y,'LineWidth',2)                %画被积函数曲线
hold on                                %保持属性
plot(x,i1-i1(1),'x--','LineWidth',2)   %画反正切函数的积分曲线
plot(x,i2-i2(1),'or-.','LineWidth',2)  %画对数函数的积分曲线
plot(x,s,'gs','LineWidth',2)           %画梯形法曲线
title('1/(\ita+b\rmsin\itx\rm)的两个不定积分公式的比较',...
    'FontSize',16)                     %加标题
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
text(x(1),0,['\itb/a\rm=',num2str(b)],'FontSize',16)%说明常数
legend('被积函数','积分的反正切函数','积分的对数函数','梯形法积分',0)%加图例

%程序结束.周群益设计
