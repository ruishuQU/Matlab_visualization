%含参数的分段函数和导数
clear                                  %清除变量
x0=1;                                  %连接点
y1=sym('x^2')                          %第1个符号函数
y2=sym('a*x+b')                        %第2个带参数的符号函数
y=y2-y1;                               %两函数之差
dy_dx=diff(y)                          %求y对x的导数
s1=subs(y,'x',x0)                      %连接点处的函数
s2=subs(dy_dx,'x',x0)                  %连接点处的导数
[a,b]=solve(s1,s2,'a','b')             %求常数

y2=subs(y2,{'a','b'},{a,b})            %第2个不带参数的符号函数
dy1_dx=diff(y1)                        %求y1对x的导数
f1=inline(y1);                         %第1个函数的内线函数
f2=inline(y2);                         %第2个函数的内线函数
df1=inline(dy1_dx)                     %第1个导数的内线函数
xm=2;                                  %最大横坐标
dx=0.05;                               %间隔
x1=0:dx:1;                             %横坐标向量
x2=1:dx:xm;                            %横坐标向量
xx=[x1,x2];                            %连接横坐标
yy=[(f1(x1)),f2(x2)];                  %连接函数
dyy=[df1(x1),double(a)*ones(size(x2))];%连接导数
figure                                 %创建图形窗口
plot(xx,yy,xx,dyy,'--','LineWidth',2)  %画曲线
title('分段函数和导数连续的参数','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
legend('\ity','\ity\prime',2)          %加图例
text(0,1,['\ita\rm=',num2str(double(a)),...
    ',\itb\rm=',num2str(double(b))],'FontSize',16)%加说明

%程序结束.周群益设计
