%双参数双根函数的极限
rand('seed',0)                         %随机数种子清零
clear                                  %清除变量
x0=0;                                  %极限的横坐标
syms x m n a b                         %定义符号变量
fnm=((1+a*x)^(1/m)*(1+b*x)^(1/n)-1)/x  %符号函数
l=limit(fnm,x,x0)                      %符号极限
a=rand(1);                             %随机取a值
b=rand(1);                             %随机取b值
fnm=inline(fnm)                        %符号函数转化为内线函数
n=input('请输入整数n之值(例如3):');   %键盘输入整数
%n=3;                                   %整数参考值
xm=1;                                  %最大横坐标
x=-xm:0.01:xm;                         %自变量向量
mm=6;                                  %最大整数
m=1:mm;                                %整数向量
[M,X]=meshgrid(m,x);                   %整数和自变量矩阵
Fnm=fnm(a,b,M,n,X);                    %函数值
figure                                 %创建图形窗口
plot(x,Fnm,'LineWidth',2)              %画曲线族
title(['双参数双根函数的极限(\itn\rm=',num2str(n),')'],'FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itf_n_m','FontSize',16)       %加纵坐标
legend([repmat('\itm\rm=',length(m),1),num2str(m')])%加图例
grid on                                %加网格
ll=subs(l,{'a','b','m','n'},{a,b,m,n});%将符号替换为整数向量
hold on                                %保持图像
plot(x0,ll,'or','LineWidth',2)         %画极限点
text(x0*ones(size(m)),ll,num2str(ll'),'FontSize',16)%标记极限值
text(-xm,min(Fnm(:)),['\ita\rm=',num2str(a),',\itb\rm=',num2str(b)],...
    'FontSize',16)                     %标记参数
Fnm=fnm(a,b,n,M,X);                    %函数值
figure                                 %创建图形窗口
plot(x,Fnm,'LineWidth',2)              %画曲线族
title(['双参数双根函数的极限(\itm\rm=',num2str(n),')'],'FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itf_n_m','FontSize',16)       %加纵坐标
legend([repmat('\itn\rm=',length(m),1),num2str(m')])%加图例
grid on                                %加网格
ll=subs(l,{'a','b','m','n'},{a,b,n,m});%将符号替换为整数向量
hold on                                %保持图像
plot(x0,ll,'or','LineWidth',2)         %画极限点
text(x0*ones(size(m)),ll,num2str(ll',4),'FontSize',16)%标记极限值
text(-xm,min(Fnm(:)),['\ita\rm=',num2str(a),',\itb\rm=',num2str(b)],...
    'FontSize',16)                     %标记参数

%程序结束.周群益设计
