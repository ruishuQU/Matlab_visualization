%幂数列和对数数列的比较
clear                                  %清除变量
a=input('请输入底数a(>1):');          %键盘输入底数
% a=2;                                   %底数参考值
% a=10;                                  %底数参考值
alpha=0.7:0.1:1.3;                     %指数向量
n=1:1000;                              %整数向量
[N,A]=meshgrid(n,alpha);               %整数和指数矩阵
Yn=log(N)/log(a)./N.^A;                %通项
figure                                 %创建图形窗口
plot(n,Yn,'LineWidth',2)               %画曲线族
title('幂数列和对数数列的比较','FontSize',16)%加标题
xlabel('\itn','FontSize',16)           %加横坐标
ylabel('\ita_n','FontSize',16)         %加纵坐标
grid on                                %加网格
legend([repmat('\it\alpha\rm=',length(alpha),1),num2str(alpha')])%加图例
text(0,0,['\ita\rm=',num2str(a)],'FontSize',16)%加说明

%程序结束.周群益设计
