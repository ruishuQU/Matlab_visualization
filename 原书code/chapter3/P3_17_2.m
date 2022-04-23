%立方抛物线的曲率半径
clear                                  %清除变量
syms x                                 %定义符号变量
y=x^3/3                                %符号函数
dy_dx=diff(y)                          %求符号导数
d2y_dx2=diff(y,2)                      %求二阶符号导数
rho=(1+dy_dx^2)^(3/2)/abs(d2y_dx2)     %求符号曲率半径
xc=x-dy_dx*(1+dy_dx^2)/d2y_dx2;        %渐屈线横坐标
yc=y+(1+dy_dx^2)/d2y_dx2;              %渐屈线纵坐标

f=inline(y)                            %符号函数化为内线函数
df=inline(dy_dx)                       %符号导数化为内线函数
d2f=inline(d2y_dx2)                    %二阶符号导数化为内线函数
fxc=inline(xc);                        %渐屈线横坐标的内线函数
fyc=inline(yc);                        %渐屈线纵坐标的内线函数
fr=inline(rho)                         %符号曲率半径化为内线函数
xm=2.5;                                %最大横坐标
x=-xm:0.001:xm;                        %横坐标向量
figure                                 %创建图形窗口
plot(x,f(x),x,fr(x),'--',fxc(x),fyc(x),'-.','LineWidth',2)%画曲线
title('立方抛物线和曲率半径以及渐屈线','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
axis([-xm,xm,-2,2.5])                  %设置曲线范围
axis equal                             %使坐标间隔相等
legend('\ity','\it\rho','\ity_C-x_C',0)%加图例

dr_dx=diff(rho)                        %求半径的导数
xrm=double(solve(dr_dx))               %求零点
xrm(imag(xrm)~=0)=[]                   %删除复数
xrm=xrm(1)                             %取第1个值
xcm=fxc(xrm);                          %渐屈线尖点横坐标
ycm=fyc(xrm);                          %渐屈线尖点纵坐标
rm=subs(rho,'x',xrm)                   %求半径极值
t=linspace(0,2*pi);                    %角度向量
hold on                                %保持属性
plot(xcm+rm*cos(t),ycm+rm*sin(t),':','LineWidth',2)%画最小曲率圆
stem(xrm,rm,'--')                      %画杆线
text(xrm,rm,[num2str(xrm),',',num2str(rm)],'FontSize',16)%标记曲率半径极值
plot([xrm,xcm],[f(xrm),ycm],'--o')     %画最小半径
text(-xcm,-ycm,[num2str(-xcm),',',num2str(-ycm)],...
    'FontSize',16)                     %标记最小曲率半径的坐标

%程序结束.周群益设计
