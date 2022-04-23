%函数的左右极限的函数文件
function fun(f,x0)
l1=limit(f,'x',x0,'Left')              %符号左极限
l1=double(l1)                          %化为数值
l2=limit(f,'x',x0,'Right')             %符号右极限
l2=double(l2)                          %化为数值

x=x0-1:0.01:x0+1;                      %自变量向量
x(x==x0)=nan;                          %向量中极限的坐标改为非数
f=inline(f);                           %转化为内线函数
figure                                 %创建图形窗口
plot(x,f(x),'LineWidth',2)             %画曲线
title('函数的左右极限','FontSize',16)  %加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itf','FontSize',16)           %加纵坐标
grid on                                %加网格
hold on                                %保持属性
plot(x0,l1,'o',x0,l2,'o')              %画极限
text([x0,x0],[l1,l2],num2str([l1;l2]),'FontSize',16)%标记极限

%程序结束.周群益设计
