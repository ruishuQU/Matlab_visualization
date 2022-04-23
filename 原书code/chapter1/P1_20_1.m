%双纽线
clear                                  %清除变量
rm=1;                                  %最大坐标
r=-rm:0.01:rm;                         %坐标向量
[X,Y]=meshgrid(r);                     %坐标矩阵
Z=(X.^2+Y.^2).^2-(X.^2-Y.^2);          %函数矩阵
figure                                 %创建图形窗口
contour(X,Y,Z,[0,0],'r')               %画零值线
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\ity/a','FontSize',16)         %加纵坐标
title('双纽线','FontSize',16)          %加标题
grid on                                %加网格
axis equal                             %使坐标间隔相等
r=[-rm,rm];                            %起点和终点坐标
hold on                                %保持属性
plot(r,r,'--',-r,r,'--','LineWidth',2) %画分隔线

p=linspace(-pi/4,pi/4);                %极角向量
r=sqrt(cos(2*p));                      %极径
polar(p,r)                             %画极坐标曲线
polar(p,-r)                            %画极坐标曲线
%画直角坐标曲线
% [x,y]=pol2cart(p,r);                   %极坐标转化为直角坐标
% plot(x,y,-x,y,'LineWidth',2)           %画线

%程序结束.周群益设计


