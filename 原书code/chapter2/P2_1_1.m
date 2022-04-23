%一次整数分式数列的极限
clear                                  %清除变量
syms n                                 %定义符号变量
an=n/(n+1)                             %符号数列
l=limit(an,n,inf)                      %求符号极限
l=double(l)                            %化为数值
fn=inline(an)                          %符号数列化为内线函数
%fn=inline(vectorize(an))               %符号数列化为内线函数
nm=1200;                               %最大整数
n=1:nm;                                %整数向量
figure                                 %创建图形窗口
plot(n,fn(n),'LineWidth',2)            %画数列曲线
title('一次整数分式数列的极限和小量以及临界整数','FontSize',16)%加标题
xlabel('\itn','FontSize',16)           %加横坐标
ylabel('\ita_n','FontSize',16)         %加纵坐标
grid on                                %加网格
hold on                                %保持图像
plot(nm,l,'or')                        %在有限远处画极限值
text(nm,l,num2str(l),'FontSize',16)    %标记极限
n=3;                                   %数值个数
epsilon=1./10.^(1:n);                  %小量
nc=floor(1./epsilon);                  %临界整数
plot(nc,fn(nc),'*')                    %画满足条件的整数的数列值
text(nc,fn(nc),num2str(epsilon'),'FontSize',16)%标记小量
text(nc,fn(nc)-0.03,num2str(nc'),'FontSize',16)%标记临界整数

%程序结束.周群益设计
