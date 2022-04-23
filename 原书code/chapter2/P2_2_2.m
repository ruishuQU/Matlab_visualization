%幂指数列的极限
clear                                  %清除变量
syms n                                 %定义符号变量
an=n^(1/n);                            %符号通项
l=limit(an,n,inf)                      %求符号极限
l=double(l)                            %求数值极限
fn=inline(an)                          %符号数列化为内线函数
nm=1000;                               %最大整数
n=1:nm;                                %整数向量
figure                                 %创建图形窗口
plot(n,fn(n),'LineWidth',2)            %画曲线
title('幂指数列的极限','FontSize',16)  %加标题
xlabel('\itn','FontSize',16)           %加横坐标
ylabel('\ita_n','FontSize',16)         %加纵坐标
grid on                                %加网格
hold on                                %保持图像
plot(nm,l,'or')                        %在有限远处画极限值
text(nm,l,num2str(l),'FontSize',16)    %标记极限

%程序结束.周群益设计
