%函数在正负无穷远处的极限的函数文件
function fun(f,x0)
l1=limit(f,'x',-Inf)                   %负无穷远处的符号极限
l1=double(l1)                          %化为数值
l2=limit(f,'x',Inf)                    %正无穷远处的符号极限
l2=double(l2)                          %化为数值

xm=10;                                 %最大横坐标
x=-xm:0.1:xm;                          %自变量向量
f=inline(f);                           %转化为内线函数
figure                                 %创建图形窗口
plot(x,f(x),'LineWidth',2)             %画曲线
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itf','FontSize',16)           %加纵坐标
title('函数在正负无穷远处的极限','FontSize',16)%加标题
grid on                                %加网格
hold on                                %保持属性
plot(-xm,l1,'o',xm,l2,'o')             %画极限
text([-xm,xm],[l1,l2],num2str([l1;l2]),'FontSize',16)%标记极限

%程序结束.周群益设计
