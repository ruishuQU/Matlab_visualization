%极角的计算
clear                                  %清除变量
x=[1,-1,-1,1];                         %四个点的横坐标
y=[1,1,-1,-1];                         %四个点的纵坐标
%a=atan(y./x)*180/pi                    %用反正切函数求角度(不合适)
a=atan2(y,x)*180/pi                    %用第二反正切函数求角度
X=[0,0,0,0;x]                          %横坐标矩阵
Y=[0,0,0,0;y]                          %纵坐标矩阵
figure                                 %创建图形窗口
plot(X,Y,'o-','LineWidth',2)           %用矩阵画线
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
title('直角坐标系中各点的角度','FontSize',16)%加标题
hold on                                %保持图像
plot([-1.5,1.5],[0,0],1.5,0,'>','LineWidth',2)%画横轴
axis equal                             %使坐标刻度相等
grid on                                %加网格
text(x,y,[num2str(a'),repmat('\circ',length(a),1)],'FontSize',16)%标记角度

%程序结束.周群益设计
