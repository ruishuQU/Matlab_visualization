%三角函数
clear                                  %清除变量
a=-360:360;                            %度数向量
x=a*pi/180;                            %弧度向量
figure                                 %创建图形窗口
plot(a,sin(x),a,cos(x),'--','LineWidth',2)%画函数曲线
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
title('正弦和余弦函数曲线','FontSize',16)%加标题
grid on                                %加网格
legend('sin','cos')                    %图例

figure                                 %创建图形窗口
plot(a,tan(x),a,cot(x),'--','LineWidth',2)%画函数曲线
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
title('正切和余切函数曲线','FontSize',16)%加标题
grid on                                %加网格
legend('tan','cot')                    %图例
ym=10;                                 %最大纵坐标
axis([-360,360,-ym,ym])                %设置曲线范围

ys=sec(x);                             %正割函数
ys(abs(ys)>ym)=NaN;                    %绝对值太大的函数值改为非数
yc=csc(x);                             %余切函数
yc(abs(yc)>ym)=NaN;                    %绝对值太大的函数值改为非数
figure                                 %创建图形窗口
plot(a,ys,a,yc,'--','LineWidth',2)     %画函数曲线
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
title('正割和余割函数曲线','FontSize',16)%加标题
grid on                                %加网格
legend('sec','csc')                    %图例
axis([-360,360,-ym,ym])                %设置曲线范围

%程序结束.周群益设计
