%方形坐标网格的画法
clear                                  %清除变量
rm=input('请输入整数:');               %键盘输入整数
%rm=2;                                  %最大半宽
x=[-rm,rm]                             %横坐标向量
y=-rm:rm                               %纵坐标向量
Y=[y;y]                                %纵坐标矩阵
figure                                 %创建图形窗口
plot(x,Y,'LineWidth',2)                %画水平直线族
hold on                                %保持属性
plot(Y,x,'LineWidth',2)                %画竖直直线族
axis equal                             %使坐标间隔相等
title('方形网格','FontSize',16)        %加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标

x=-rm-1:rm+1                           %新横坐标向量
[X,Y]=meshgrid(x,y)                    %坐标矩阵
figure                                 %创建图形窗口
plot(X,Y,'LineWidth',2)                %画竖直线
hold on                                %保持属性
plot(X',Y','LineWidth',2)              %画水平线
plot(X,Y,'o')                          %画圈
%grid on                                %加网格
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
title('矩形网格和点以及坐标','FontSize',16)%加标题
axis equal                             %使坐标间隔相等
text(X(:),Y(:),num2str(X(:)))          %显示横坐标
text(X(:)+0.15,Y(:),',')               %显示逗号
text(X(:)+0.2,Y(:),num2str(Y(:)))      %显示纵坐标

%程序结束.周群益设计
