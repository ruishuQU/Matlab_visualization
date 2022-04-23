%椭圆族
clear                                  %清除变量
b=0.5:0.5:2;                           %纵半轴向量
t=linspace(0,2*pi);                    %参变量向量
[B,T]=meshgrid(b,t);                   %纵半轴和参变量矩阵
X=cos(T);                              %横坐标矩阵
Y=B.*sin(T);                           %纵坐标矩阵
figure                                 %创建图形窗口
plot(X,Y,'LineWidth',2)                %画曲线族
legend([repmat('\itb/a\rm=',length(b),1),num2str(b')])%图例
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\ity/a','FontSize',16)         %加纵坐标
title('椭圆线族','FontSize',16)        %加标题
grid on                                %加网格
axis equal                             %使坐标间隔相等
%画参变量曲线
% x=-1:0.1:1;                            %横坐标向量
% [B,X]=meshgrid(b,x);                   %纵半轴和横坐标矩阵
% Y=B.*sqrt(1-X.^2);                     %纵坐标矩阵
% hold on                                %保持属性
% plot(X,Y,'+','LineWidth',2)            %画上曲线族
% plot(X,-Y,'+','LineWidth',2)           %画下曲线族

%程序结束.周群益设计
