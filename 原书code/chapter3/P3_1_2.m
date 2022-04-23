%分数幂函数的增减性和凹凸性
clear                                  %清除变量
syms x                                 %定义符号变量
y=x^2^(1/3);                           %分数幂偶函数的符号函数
%y=x^(2/3);                             %符号函数(负数部分曲线不对)
%y=x^(1/3);                             %分数幂奇函数的符号函数
%y=sign(x)*abs(x)^(1/3);                %符号函数(错)
dy_dx=diff(y)                          %求符号导数
d2y_dx2=diff(y,2)                      %求符号二阶导数
f=inline(y)                            %符号函数化为内线函数
df=inline(dy_dx)                       %符号导数化为内线函数
d2f=inline(d2y_dx2)                    %符号二阶导数化为内线函数

dx=0.02;                               %间隔
xm=2;                                  %最大横坐标
x=-xm:dx:xm;                           %分数幂偶函数的横坐标向量
y=f(x);                                %求函数值
dy=df(x);                              %求导数值
d2y=d2f(x);                            %求二阶导数值
y(imag(y)~=0)=NaN;                     %将函数中的复数改为非数
dy(imag(dy)~=0)=NaN;                   %将导数中的复数改为非数
d2y(imag(d2y)~=0)=NaN;                 %将二阶导数中的复数改为非数
figure                                 %创建图形窗口
plot(x,y,x,dy,'+--',x,d2y,'x-.','LineWidth',2)%画函数和导数曲线
%plot(x,y,x,dy,'+--',x,d2y,'x-.',...
%    -x,-y,'b',-x,dy,'+--g',-x,-d2y,'x-.r','LineWidth',2)%画函数和导数曲线
title('分数幂偶函数的增减性和凹凸性','FontSize',16)%加标题
%title('分数幂奇函数的增减性和凹凸性','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
axis([-xm,xm,-2,2])                    %设置曲线范围
legend('\ity','\ity\prime','\ity\prime\prime',4)%加图例

%y=sign(x).*abs(x).^(1/3);              %分数幂奇函数的函数向量
dy=diff(y)/dx;                         %求数值导数
dy=[dy(1),(dy(1:end-1)+dy(2:end))/2,dy(end)];%求平均值
d2y=diff(dy)/dx;                       %求二阶数值导数
d2y=[d2y(1),(d2y(1:end-1)+d2y(2:end))/2,d2y(end)];%求平均值
hold on                                %保持属性
plot(x,dy,'go',x,d2y,'sr')             %再画数二阶值导数曲线
text(-xm,-1.5,'圈表示数值导数,方形表示数值二阶导数','FontSize',16)%加说明

%程序结束.周群益设计
