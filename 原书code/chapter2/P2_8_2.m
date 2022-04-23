%双幂有理函数的极限
clear                                  %清除变量
x0=1;                                  %极限的横坐标
syms x m n                             %定义符号变量
%fnm=m/(1-x^m)-n/(1-x^n)                %符号函数
fnm=(x^m-1)/(x^n-1)                    %符号函数
l=limit(fnm,x,x0)                      %符号极限
fnm=inline(fnm);                       %符号函数转化为内线函数
n=input('请输入整数n之值(例如3):');   %键盘输入整数
%n=3;                                   %整数参考值
m=1:6;                                 %整数向量
xm=2;                                  %最大横坐标
x=0:0.01:xm;                           %自变量向量
[M,X]=meshgrid(m,x);                   %整数和自变量矩阵
figure                                 %创建图形窗口
plot(x,fnm(M,n,X),'LineWidth',2)       %画曲线族
title(['双幂有理函数的极限(\itn\rm=',num2str(n),')'],'FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itf_n_m','FontSize',16)       %加纵坐标
legend([repmat('\itm\rm=',length(m),1),num2str(m')],2)%加图例
grid on                                %加网格
ll=subs(l,{'m','n'},{m,n});            %将符号替换为整数向量
hold on                                %保持图像
plot(x0,ll,'or','LineWidth',2)         %画极限点
text(x0*ones(size(m)),ll,num2str(ll'),'FontSize',16)%标记极限值

figure                                 %创建图形窗口
plot(x,fnm(n,M,X),'LineWidth',2)       %画曲线族
title(['双幂有理函数的极限(\itm\rm=',num2str(n),')'],'FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itf_n_m','FontSize',16)       %加纵坐标
legend([repmat('\itn\rm=',length(m),1),num2str(m')],2)%加图例
grid on                                %加网格
ll=subs(l,{'m','n'},{n,m});            %将符号替换为整数向量
hold on                                %保持图像
plot(x0,ll,'or','LineWidth',2)         %画极限点
text(x0*ones(size(m)),ll,num2str(ll',4),'FontSize',16)%标记极限值

%程序结束.周群益设计
