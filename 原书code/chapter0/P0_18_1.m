%矢量场的大小和方向
clear                                  %清除变量
xm=2.5;                                %最大横坐标
x=-xm:0.1:xm;                          %横坐标向量
ym=2;                                  %最大纵坐标
y=-ym:0.1:ym;                          %纵坐标向量
[X,Y]=meshgrid(x,y);                   %坐标矩阵
dY=X.^3+Y.^3;                          %dy分量
dX=3*X.*Y.^2;                          %dx分量
figure                                 %创建图形窗口
quiver(X,Y,dX,dY)                      %画箭头
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加坐标
title('矢量场的大小和方向','FontSize',16)%加标题
grid on                                %加网格
axis equal                             %使坐标间隔相等
D=sqrt(dX.^2+dY.^2);                   %矢量大小
dY=dY./D;                              %dy的相对分量
dX=dX./D;                              %dx的相对分量
figure                                 %创建图形窗口
quiver(X,Y,dX,dY)                      %画等长的箭头表示方向
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
title('矢量场的方向','FontSize',16)    %加标题
grid on                                %加网格
axis equal                             %使坐标间隔相等

%程序结束.周群益设计
