%根数列的极限
clear                                  %清除变量
syms a n                               %定义符号变量
an=a^(1/n);                            %符号通项
l=limit(an,n,inf)                      %求符号极限
l=double(l)                            %求数值极限
fn=inline(an)                          %符号数列化为内线函数
a=0.5:0.5:2;                           %常数向量
nm=100;                                %最大整数
n=1:nm;                                %整数向量
[A,N]=meshgrid(a,n);                   %常数和整数矩阵 
figure                                 %创建图形窗口
plot(n,fn(A,N),'LineWidth',2)          %画曲线族
xlabel('\itn','FontSize',16)           %加横坐标
ylabel('\ita_n','FontSize',16)         %加纵坐标
title('根数列的极限','FontSize',16)    %加标题
grid on                                %加网格
legend([repmat('\ita\rm=',length(a),1),num2str(a')])%加图例
hold on                                %保持图像
plot(nm,l,'or')                        %在有限远处画极限值
text(nm,l,num2str(l),'FontSize',16)    %标记极限

%程序结束.周群益设计
