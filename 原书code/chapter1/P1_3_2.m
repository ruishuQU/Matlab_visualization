%四舍五入函数
clear                                  %清除变量
xm=4;                                  %最大自变量
x=-xm:0.1:xm;                          %自变量向量
y=round(x);                            %函数向量
y(abs(x)==abs(y)-0.5)=nan;             %半整数改为非数
figure                                 %创建图形窗口
plot(x,x,'--',x,y,'LineWidth',2)       %画线
xx=0:xm-1;                             %整数向量
hold on                                %保持属性
plot(xx+0.5,xx+1,'.',-xx-0.5,-xx-1,'.','MarkerSize',24)%画点
plot(xx+0.5,xx,'o',-xx-0.5,-xx,'o')    %画圈
title('四舍五入函数','FontSize',16)    %加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
grid on                                %加网格
axis([-xm-1,xm+1,-xm-1,xm+1])          %设置曲线范围
pause                                  %暂停
%验证用floor表示的四舍五入函数
yy=floor(x+0.5);                       %加0.5取整
l=x<=0&floor(x+0.5)==x+0.5;            %对于负数并且加了0.5的整数
yy(l)=yy(l)-1;                         %逻辑真者减1
plot(x,yy,'r.')                        %画四舍五入点

%程序结束.周群益设计
