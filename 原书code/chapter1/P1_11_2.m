%拱形抛物线
clear                                  %清除变量
ym=1;                                  %最大纵坐标
y=0:0.01:ym;                           %纵坐标向量
a=0.5:0.5:2;                           %半拱宽向量
[A,Y]=meshgrid(a,y);                   %半拱宽和纵坐标矩阵
X=A.*sqrt(1-Y);                        %横坐标矩阵
figure                                 %创建图形窗口
plot(X,y,-X,y,'LineWidth',2)           %画拱形抛物线
xlabel('\itx/h','FontSize',16)         %加横坐标
ylabel('\ity/h','FontSize',16)         %加纵坐标
title('拱形抛物线','FontSize',16)      %加标题
grid on                                %加网格
axis equal                             %使坐标间隔相等
legend([repmat('\ita/h\rm=',length(a),1),num2str(a')])%图例

%程序结束.周群益设计
