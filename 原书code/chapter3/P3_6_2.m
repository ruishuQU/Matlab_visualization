%幂函数与含参数的指数乘积的曲线族
clear                                  %清除变量
a=-3:3;                                %常数
xm=8;                                  %最大横坐标
x=-xm:0.01:xm;                         %横坐标向量
[A,X]=meshgrid(a,x);                   %常数和横坐标矩阵
Y=X.*exp(-X./A);                       %纵坐标矩阵
figure                                 %创建图形窗口
plot(x,Y,'LineWidth',2)                %画曲线族
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
title('幂函数与含参数的指数乘积的曲线族','FontSize',16)%加标题
grid on                                %加网格
legend([repmat('\ita\rm=',length(a),1),num2str(a')],4)%加图例
axis([-xm,xm,-2,2])                    %设置坐标范围
hold on                                %保持属性
plot(x,x,':','LineWidth',2)            %画切线
yM=a/exp(1);                           %极值纵坐标
stem(a,yM,'--')                        %画极值杆线
plot(x,x/exp(1),'-.','LineWidth',2)    %画极值分布线
yC=2*a/exp(1)^2;                       %拐点纵坐标
plot(2*a,yC,'s')                       %画拐点
plot(2*x,2*x/exp(1)^2,'-.','LineWidth',2)%画拐点分布线

y=sym('x*exp(-x)');                    %定义符号函数
dy_dx=diff(y)                          %求符号导数
d2y_dx2=diff(y,2)                      %求符号二阶导数
f=inline(y);                           %符号函数转化为内线函数
df=inline(dy_dx);                      %符号导数转化为内线函数
d2f=inline(d2y_dx2);                   %符号二阶导数转化为内线函数
figure                                 %创建图形窗口
plot(x,f(x),x,df(x),'--',x,d2f(x),'-.','LineWidth',2)%画曲线
xlabel('\itx/a','FontSize',16)         %加横坐标
title('约化函数和导数曲线','FontSize',16)%加标题
grid on                                %加网格
axis([-1,xm,-1,1])                     %设置坐标范围
legend('\ity/a','\ity\prime','\itay\prime\prime')%加图例
xM=solve(dy_dx)                        %求导数的符号零点
xM=double(xM)                          %化为数值
yM=f(xM);                              %求极值纵坐标
hold on                                %保持属性
stem(xM,yM,'--')                       %画极值杆线
text(xM,yM,[num2str(xM),',',num2str(yM)],'FontSize',16)%标记极值
xC=solve(d2y_dx2)                      %求二阶导数的符号零点
xC=double(xC)                          %化为数值
yC=f(xC);                              %求拐点纵坐标
plot(2,yC,'s')                         %画拐点
text(xC,yC,[num2str(xC),',',num2str(yC)],'FontSize',16)%标记拐点

%程序结束.周群益设计
