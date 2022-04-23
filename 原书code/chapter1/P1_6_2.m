%反三角函数
clear                                  %清除变量
x=-1:0.01:1;                           %自变量向量
figure                                 %创建图形窗口
%plot(x,asin(x),x,acos(x),'--','LineWidth',2)%画函数曲线
plot(x,asin(x)*180/pi,x,acos(x)*180/pi,'--','LineWidth',2)%画函数曲线
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
title('反正弦和反余弦函数','FontSize',16)%加标题
grid on                                %加网格
legend('asin','acos')                  %图例
hold on                                %保持属性
plot(x,(asin(x)+acos(x))*180/pi,'-.','LineWidth',2)%两函数之和
a=-180:5:180;                          %度数向量
xx=a*pi/180;                           %弧度向量
plot(sin(xx),a,'+',cos(xx),a,'x','LineWidth',2)%画反函数曲线

xm=5;                                  %最大横坐标
x=-xm:0.01:xm;                         %自变量向量
figure                                 %创建图形窗口
plot(x,atan(x)*180/pi,x,acot(x)*180/pi,'--','LineWidth',2)%画函数曲线
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
title('反正切和反余切函数','FontSize',16)%加标题
grid on                                %加网格
legend('atan','acot')                  %图例
hold on                                %保持属性
plot(x,(atan(x)+acot(x))*180/pi,'-.','LineWidth',2)%两函数之和
plot(tan(xx),a,'+',cot(xx),a,'x','LineWidth',2)%画反函数曲线
axis([-xm,xm,-180,180])                %设置曲线范围

yas=asec(x);                           %反正割函数
yas(imag(yas)~=0)=nan;                 %复数改为非数
yac=acsc(x);                           %反余割函数
yac(imag(yac)~=0)=nan;                 %复数改为非数
figure                                 %创建图形窗口
plot(x,yas*180/pi,x,yac*180/pi,'--','LineWidth',2)%画函数曲线
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
title('反正割和反余割函数','FontSize',16)%加标题
grid on                                %加网格
legend('asec','acsc',4)                %图例
hold on                                %保持属性
plot(x,(asec(x)+acsc(x))*180/pi,'-.','LineWidth',2)%两函数之和
plot(sec(xx),a,'+',csc(xx),a,'x','LineWidth',2)%画反函数曲线
axis([-xm,xm,-180,180])                %设置曲线范围

%程序结束.周群益设计
