%第二类幂指函数和极限的函数文件
function fun(f,t)
l=limit(f,'x',0)                       %符号极限
l=double(l)                            %化为数值
xm=0.5;                                %最大横坐标
x=-xm:0.01:xm;                         %自变量向量
%f=inline(vectorize(f));                %符号函数转化为内线函数
f=inline(f);                           %符号函数转化为内线函数
y=f(x);                                %求函数值
y(imag(y)~=0)=NaN;                     %复数化为非数
figure                                 %创建图形窗口
plot(x,y,'LineWidth',2)                %画曲线
title(['第二类',t,'幂指函数和极限'],'FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itf','FontSize',16)           %加纵坐标
grid on                                %加网格
hold on                                %保持属性
plot(0,l,'or','LineWidth',2)           %画极限点
text(0,l,num2str(l),'FontSize',16)     %标记极限

%程序结束.周群益设计
