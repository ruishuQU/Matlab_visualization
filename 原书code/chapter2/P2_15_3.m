%双参数指数函数的极限
clear                                  %清除变量
syms x a b                             %定义符号变量
f=(a^(x^2)-b^(x^2))/(a^x-b^x)^2        %符号函数
l=limit(f,x,0)                         %符号极限

f=inline(vectorize(f))                 %符号函数转化为内线函数
b=input('请输入参数b之值(例如2):');   %键盘输入参数
%b=2;                                   %参数参考值
a=0.5:0.5:3;                           %参数向量
xm=0.5;                                %最大横坐标
x=-xm:0.01:xm;                         %自变量向量
[A,X]=meshgrid(a,x);                   %参数和自变量矩阵
%F=(A.^(X.^2)-b.^(X.^2))./(A.^X-b.^X).^2;%函数矩阵
F=f(A,b,X);                            %函数矩阵
figure                                 %创建图形窗口
plot(x,F,'LineWidth',2)                %画曲线族
title(['双参数指数函数的极限(\itb\rm=',num2str(b),')'],'FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itf','FontSize',16)           %加纵坐标
legend([repmat('\ita\rm=',length(a),1),num2str(a')],0)%加图例
grid on                                %加网格
ll=subs(l,{'a','b'},{a,b});            %将符号替换为参数向量
hold on                                %保持图像
plot(0,ll,'or','LineWidth',2)          %画极限点
text(zeros(size(a)),ll,num2str(ll',4),'FontSize',16)%标记极限值

%F=(b.^(X.^2)-A.^(X.^2))./(b.^X-A.^X).^2;%函数矩阵
F=f(b,A,X);                            %函数矩阵
figure                                 %创建图形窗口
plot(x,F,'LineWidth',2)                %画曲线族
title(['双参数指数函数的极限(\ita\rm=',num2str(b),')'],'FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itf','FontSize',16)           %加纵坐标
legend([repmat('\itb\rm=',length(a),1),num2str(a')],0)%加图例
grid on                                %加网格
ll=subs(l,{'a','b'},{b,a});            %将符号替换为参数向量
hold on                                %保持图像
plot(0,ll,'or','LineWidth',2)          %画极限点
text(zeros(size(a)),ll,num2str(ll',4),'FontSize',16)%标记极限值

%程序结束.周群益设计
