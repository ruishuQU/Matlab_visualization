%圆锥曲线族
clear                                  %清除变量
e=0:0.25:1.25;                         %偏心率向量
t=linspace(0,2*pi);                    %极角向量
[E,T]=meshgrid(e,t);                   %偏心率和极角矩阵
R=1./(1+E.*cos(T));                    %极径矩阵
rm=5;                                  %最大极径
R(R>rm+2)=NaN;                         %太大的极径改为非数
X=R.*cos(T);                           %横坐标矩阵
Y=R.*sin(T);                           %纵坐标矩阵
figure                                 %创建图形窗口
%polar(T,R)
plot(X,Y,'LineWidth',2)                %画曲线族
legend([repmat('\ite\rm=',length(e),1),num2str(e')])%加图例
xlabel('\itx/p','FontSize',16)         %加横坐标
ylabel('\ity/p','FontSize',16)         %加纵坐标
grid on                                %加网格
title('圆锥曲线族','FontSize',16)      %加标题
axis equal                             %使坐标间隔相等
axis([-rm,1,-rm+2,rm-2])               %设置曲线范围

%程序结束.周群益设计
