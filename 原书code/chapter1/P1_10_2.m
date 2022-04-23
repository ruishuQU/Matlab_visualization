%双曲函数恒等式的验证
clear                                  %清除变量
xm=2;                                  %最大横坐标
x=-xm:0.1:xm;                          %自变量向量
y=-2:2;                                %参数向量
[X,Y]=meshgrid(x,y);                   %自变量和参数矩阵
figure                                 %创建图形窗口
plot(x,sinh(X-Y),'.-','LineWidth',2)   %画等式左边曲线族
hold on                                %保持属性
plot(x,sinh(X).*cosh(Y)-cosh(X).*sinh(Y),'o','LineWidth',2)%画等式右边曲线族
title('差的双曲正弦的恒等式','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
axis tight                             %贴框
text(-xm,10,'点表示左边的函数,圈表示右边的函数.','FontSize',16)%加说明
legend([repmat('\ity\rm=',length(y),1),num2str(y')],4)%图例

figure                                 %创建图形窗口
plot(x,cosh(X+Y),'.-','LineWidth',2)   %画等式左边曲线族
hold on                                %保持属性
plot(x,cosh(X).*cosh(Y)+sinh(X).*sinh(Y),'o','LineWidth',2)%画等式右边曲线族
title('和的双曲余弦的恒等式','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
axis tight                             %贴框
text(-xm,20,'点表示左边的函数,圈表示右边的函数.','FontSize',16)%加说明
legend([repmat('\ity\rm=',length(y),1),num2str(y')])%图例

syms x y                               %定义符号变量
z=sinh(x-y)                            %恒等式的左边
expand(z)                              %展开
z=sinh(x)*cosh(y)-cosh(x)*sinh(y)      %恒等式的右边
simplify(z)                            %化简
z=cosh(x+y)                            %恒等式的左边
expand(z)                              %展开
z=cosh(x)*cosh(y)+sinh(x)*sinh(y)      %恒等式的右边
simplify(z)                            %化简

%程序结束.周群益设计
