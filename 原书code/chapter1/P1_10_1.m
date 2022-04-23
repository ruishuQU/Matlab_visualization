%双曲函数恒等式的验证
clear                                  %清除变量
xm=2;                                  %最大横坐标
x=-xm:0.1:xm;                          %自变量向量
figure                                 %创建图形窗口
plot(x,cosh(x).^2,'+-',x,sinh(2*x),'x--','LineWidth',2)%画函数曲线
hold on                                %保持属性
plot(x,1+sinh(x).^2,'o',x,2*sinh(x).*cosh(x),'s','LineWidth',2)%画函数曲线
title('双曲函数的恒等式','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
grid on                                %加网格
legend('双曲余弦平方','二倍双曲正弦')   %图例
text(-xm,15,'实线和虚线表示左边的函数,圈和方形表示右边的函数.',...
    'FontSize',16)                    %加说明

syms x                                 %定义符号变量
y=1+sinh(x)^2                          %恒等式右边
simplify(y)                            %化简
y=cosh(x)^2-(1+sinh(x)^2)              %移项的恒等式 
simplify(y)                            %化简
y=cosh(x)^2                            %双曲余弦平方的符号函数
simple(y)                              %化简
y=2*sinh(x)*cosh(x)                    %恒等式右边
simplify(y)                            %化简
y=sinh(2*x)-2*sinh(x)*cosh(x)          %移项的恒等式 
simplify(y)                            %化简
y=sinh(2*x)                            %二倍的双曲正弦的符号函数 
simple(y)                              %化简

%程序结束.周群益设计
