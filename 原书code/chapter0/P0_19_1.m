%曲面的画法
clear                                  %清除变量
rm=3;                                  %最大坐标
r=-rm:0.1:rm;                          %坐标向量
[X,Y]=meshgrid(r);                     %坐标矩阵
Z=X.^2-Y.^2;                           %鞍形面竖坐标
%----------------------------------------------------------
figure                                 %创建图形窗口
surf(X,Y,Z)                            %画曲面
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
zlabel('\itz','FontSize',16)           %加纵坐标
title('直角坐标系中的鞍形面','FontSize',24)%加标题
grid on                                %加网格
box on                                 %加框
pause                                  %暂停
view(2)                                %设置俯视角
title('鞍形面的俯视图','FontSize',24)  %修改标题
pause                                  %暂停
z=-8:2:8;                              %等高线的值
hold on                                %保持属性
contour3(X,Y,Z,z,'k')                  %画三维等高线
shading interp                         %染色
alpha(0.5)                             %两面半透明
view(3)                                %设置三维视角
title('无网格线的鞍形面和等高线','FontSize',24)%修改标题
pause                                  %暂停
view(2)                                %设置俯视角
title('无网格线的鞍形面的俯视图','FontSize',24)%修改标题
pause                                  %暂停
view(0,0)                              %设置正视角
title('鞍形面的正视图','FontSize',24)  %修改标题
pause                                  %暂停
view(90,0)                             %设置侧视角
title('鞍形面的侧视图','FontSize',24)  %修改标题

%程序结束.周群益设计
