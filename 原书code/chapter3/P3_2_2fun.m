%反三角函数的导数的函数文件
function fun(y,t,xm,ym)
dy_dx=diff(y)                          %求y对x的导数
d2y_dx2=diff(y,2)                      %求y对x的二阶导数
f=inline(y);                           %函数的内线函数
df=inline(dy_dx)                       %导数的内线函数
d2f=inline(d2y_dx2)                    %导数的内线函数
x=-xm:0.05:xm;                         %横坐标向量
y=f(x);                                %函数值
y(imag(y)~=0)=NaN;                     %复数改为非数
dy=df(x);                              %二阶导数函数值
dy(imag(dy)~=0)=NaN;                   %复数改为非数
d2y=d2f(x);                            %二阶导数函数值
d2y(imag(d2y)~=0)=NaN;                 %复数改为非数
figure                                 %创建图形窗口
plot(x,y,x,dy,'--o',x,d2y,'-.s','LineWidth',2)%画曲线
xlabel('\itx','FontSize',16)           %加横坐标
title(['反',t,'函数和导数'],'FontSize',16)%加标题
grid on                                %加网格
axis([-xm,xm,-ym,ym])                  %设置坐标范围
legend('\ity','\ity\prime','\ity\prime\prime',0)%图例

%程序结束.周群益设计
