%双三角函数的极限
clear                                  %清除变量
x0=pi;                                 %极限的横坐标
syms x m n                             %定义符号变量
fnm=sin(m*x)/sin(n*x)                  %符号函数
l=limit(fnm,x,x0)                      %符号极限(无最简结果)
fnm=inline(fnm);                       %符号函数转化为内线函数
n=input('请输入整数n之值(例如2):');    %键盘输入整数
%n=2;                                   %整数参考值
x=linspace(x0-pi/3,x0+pi/3);           %自变量向量
m=-3:3;                                %整数向量
[M,X]=meshgrid(m,x);                   %整数和自变量矩阵
figure                                 %创建图形窗口
plot(x,fnm(M,n,X),'LineWidth',2)       %画曲线族
title(['双三角函数的极限(\itn\rm=',num2str(n),')'],'FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itf_n_m','FontSize',16)       %加纵坐标
legend([repmat('\itm\rm=',length(m),1),num2str(m')])%加图例
grid on                                %加网格
ll=subs(l,{'m','n'},{m,n});            %将符号替换为整数向量
hold on                                %保持图像
plot(x0,ll,'or','LineWidth',2)         %画极限点
text(x0*ones(size(m)),ll,num2str(ll'),'FontSize',16)%标记极限值

figure                                 %创建图形窗口
plot(x,fnm(n,M,X),'LineWidth',2)       %画曲线族
title(['双三角函数的极限(\itm\rm=',num2str(n),')'],'FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itf_n_m','FontSize',16)       %加纵坐标
legend([repmat('\itn\rm=',length(m),1),num2str(m')])%加图例
grid on                                %加网格
ll=subs(l,{'m','n'},{n,m});            %将符号替换为整数向量
hold on                                %保持图像
plot(x0,ll,'or','LineWidth',2)         %画极限点
text(x0*ones(size(m)),ll,num2str(ll',4),'FontSize',16)%标记极限值
axis([x0-pi/3,x0+pi/3,-5,5])           %设置曲线范围

%程序结束.周群益设计
