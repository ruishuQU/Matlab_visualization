%复合函数
clear                                  %清除变量
xm=3;                                  %最大自变量
x=-xm:0.01:xm;                         %自变量向量
f=sign(1-abs(x));                      %函数向量
f(abs(x)==1)=NaN;                      %自变量的绝对值为1的函数改为非数
figure                                 %创建图形窗口
subplot(2,1,1)                         %取子图
plot(x,f,'LineWidth',3)                %画线
title('初等函数','FontSize',16)        %加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity\rm=\itf\rm(\itx\rm)','FontSize',16)%加纵坐标
grid on                                %加网格
hold on                                %保持属性
plot([-1,1],[1,1],'o',[-1,1],[-1,-1],'o')%画断点
plot([-1,1],[0,0],'.','MarkerSize',20) %画断点的函数
subplot(2,1,2)                         %取子图
plot(x,exp(x),'LineWidth',3)           %画线
title('初等函数','FontSize',16)        %加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity\rm=\itg\rm(\itx\rm)','FontSize',16)%加纵坐标
grid on                                %加网格

y=sign(1-exp(x));                      %函数向量
y(x==0)=NaN;                           %自变量为0的函数改为非数
figure                                 %创建图形窗口
subplot(2,1,1)                         %取子图
plot(x,y,'LineWidth',3)                %画线
title('复合函数','FontSize',16)        %加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itf\rm(\itg\rm(\itx\rm))','FontSize',16)%加纵坐标
grid on                                %加网格
hold on                                %保持属性
plot([0,0],[-1,1],'o')                 %画两个断点
plot(0,0,'.','MarkerSize',20)          %画断点的函数

y=exp(sign(1-abs(x)));                 %函数向量
y(abs(x)==1)=NaN;                      %自变量的绝对值为1的函数改为非数
subplot(2,1,2)                         %取子图
plot(x,y,'LineWidth',3)                %画线
title('复合函数','FontSize',16)        %加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itg\rm(\itf\rm(\itx\rm))','FontSize',16)%加纵坐标
grid on                                %加网格
e=exp(1);                              %e值
hold on                                %保持属性
plot([-1,1],[e,e],'o',[-1,1],[1/e,1/e],'o')%画断点
plot([-1,1],[1,1],'.','MarkerSize',20) %画断点的函数

%程序结束.周群益设计
