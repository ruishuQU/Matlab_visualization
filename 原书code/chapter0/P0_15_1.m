%正多边形和圆的画法
clear                                  %清除变量
n=input('请输入边数:');                %键盘输入半宽
%n=3;                                  %参考值
k=0:n;                                 %整数向量
ak=2*pi/n*k;                           %角度向量
x=cos(ak);                             %横坐标向量
y=sin(ak);                             %纵坐标向量
figure                                 %创建图形窗口
plot(x,y,y,x,'--','LineWidth',2)       %画两种正多边形
axis equal                             %使坐标间隔相等
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\ity/a','FontSize',16)         %加纵坐标
title(['正多边形(\itn\rm=',num2str(n),')'],'FontSize',16)%加标题
grid on                                %加网格
legend('起点在正横轴上','起点在正纵轴上')%加图例

%程序结束.周群益设计
