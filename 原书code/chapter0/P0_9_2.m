%验证三角函数的积化和差公式
clear                                  %清除变量
a=-360:10:360;                         %度数向量
x=a*pi/180;                            %弧度向量
y=(0:3)/6*pi;                          %取角度向量
[X,Y]=meshgrid(x,y);                   %向量化为矩阵
Z=cos(X).*cos(Y);                      %恒等式的左边
Z1=cos(X-Y);                           %恒等式右边的第1部分
Z2=cos(X+Y);                           %恒等式右边的第2部分
figure                                 %创建图形窗口
subplot(2,1,1)                         %选子图
plot(x,Z,'*-','LineWidth',2)           %画函数曲线族
hold on                                %保持属性
plot(x,(Z1+Z2)/2,'o','LineWidth',2)    %画函数曲线族
title('验证余弦函数的积化和差公式','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
legend(num2str(y'))                    %简单图例
text(-2*pi,0,'星号表示左边，圆表示右边','FontSize',16)%加说明
grid on                                %加网格
subplot(2,1,2)                         %选子图
plot(x,sin(X).*sin(Y),'*-','LineWidth',2)%画函数曲线族
hold on                                %保持属性
plot(x,(Z1-Z2)/2,'o','LineWidth',2)    %画函数曲线族
title('验证正弦函数的积化和差公式','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
legend([repmat('\ity\rm=',length(y),1),num2str(y')])%复杂图例
text(-2*pi,0,'星号表示左边，圆表示右边','FontSize',16)%加说明

