%三角函数恒等式的验证
clear                                  %清除变量
xm=4;                                  %最大横坐标
x=-xm:0.1:xm;                          %自变量向量
y=-2:2;                                %参数向量
[X,Y]=meshgrid(x,y);                   %自变量和参数矩阵
figure                                 %创建图形窗口
plot(x,sin(X+Y),'.-','LineWidth',2)    %画等式左边曲线族
hold on                                %保持属性
plot(x,sin(X).*cos(Y)+cos(X).*sin(Y),'o','LineWidth',2)%画等式右边曲线族
title('和的正弦函数的恒等式','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
axis tight                             %贴框
legend([repmat('\ity\rm=',length(y),1),num2str(y')])%图例
text(-xm,0,'点表示左边的函数,圈表示右边的函数.','FontSize',16)%加说明
figure                                 %创建图形窗口
plot(x,cos(X-Y),'.-','LineWidth',2)    %画等式左边曲线族
hold on                                %保持属性
plot(x,cos(X).*cos(Y)+sin(X).*sin(Y),'o','LineWidth',2)%画等式右边曲线族
title('差的余弦函数的恒等式','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
axis tight                             %贴框
legend([repmat('\ity\rm=',length(y),1),num2str(y')])%图例
text(-xm,0,'点表示左边的函数,圈表示右边的函数.','FontSize',16)%加说明

syms x y                               %定义符号变量
z=sin(x+y)                             %恒等式的左边
expand(z)                              %展开
z=sin(x)*cos(y)+cos(x)*sin(y)          %恒等式的右边
simplify(z)                            %化简
z=cos(x-y)                             %恒等式的左边
expand(z)                              %展开
z=cos(x)*cos(y)+sin(x)*sin(y)          %恒等式的右边
simplify(z)                            %化简

%程序结束.周群益设计
