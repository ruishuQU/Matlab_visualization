%幂指函数和导数
clear                                  %清除变量
syms x                                 %定义符号变量
y=x^sin(x)                             %符号函数
dy_dx=diff(y)                          %求导数
d2y_dx2=diff(y,2)                      %求符号二阶导数
f=inline(y)                            %函数内线函数
df=inline(dy_dx)                       %导数内线函数
d2f=inline(d2y_dx2)                    %符号二阶导数化为内线函数

xm=6;                                  %最大横坐标
dx=0.1;                                %间隔
x=0:dx:xm;                             %横坐标向量
y=f(x);                                %纵坐标向量
figure                                 %创建图形窗口
plot(x,y,x,df(x),'--+',x,d2f(x),'-.x','LineWidth',2)%画曲线
xlabel('\itx','FontSize',16)           %加横坐标
title('幂指函数和导数','FontSize',16)      %加标题
grid on                                %加网格
legend('\ity','\ity\prime','\ity\prime\prime',0)%图例
dy=(cos(x).*log(x)+sin(x)./x).*x.^sin(x);
d2y=(sin(x).^2-sin(x)+2*x.*cos(x)-x.^2.*sin(x).*log(x)+...
    x.^2.*cos(x).^2.*log(x).^2+x.*sin(2*x).*log(x))...
    .*x.^sin(x)./x.^2;
hold on                                %保持属性
plot(x,dy,'o',x,d2y,'s')               %重画曲线
text(0,5,'圈表示导数的解析解,方形表示二阶导数的解析解.',...
    'FontSize',16)                     %加说明

%程序结束.周群益设计
