%圆盘沿圆环滚动时动点运动规律的函数文件
function fun(r,d)
n=6;                                   %圆盘转的圈数
t=linspace(0,n*2*pi,500);              %圆心角向量
p=r/(1-r)*t;                           %圆心角
xc=(1-r)*sin(p);                       %质心横坐标
yc=(1-r)*cos(p);                       %质心纵坐标
x=xc-d*sin(t);                         %动点横坐标
y=yc+d*cos(t);                         %动点纵坐标
%s=sqrt(x.^2+y.^2);                     %动点的极径
phi=linspace(0,2*pi);                  %圆心角向量
figure                                 %建立图形窗口
plot(sin(phi),cos(phi),'LineWidth',2)  %画圆环
fs=16;                                 %字体大小
title('圆盘沿圆环无滑滚动时动点的轨道','FontSize',fs)%显示标题
xlabel('\itx/R','FontSize',fs)         %x标签
ylabel('\ity/R','FontSize',fs)         %y标签
txt=['\itr/R\rm=',num2str(r),',\itd/R\rm=',num2str(d)];%参数字符串
text(0,0,txt,'FontSize',fs)            %显示字符串
grid on                                %加网格
axis equal ij                          %使坐标间隔相等
hold on                                %保持图像
%hc=plot(r*cos(phi),1-r+r*sin(phi),'m','LineWidth',2);%画圆盘并取句柄
hc=fill(r*cos(phi),1-r+r*sin(phi),'y','LineWidth',2);%画圆盘并取句柄
hl1=plot([0,0],[1-r,1],'.-g','LineWidth',2);%画盘心到切点的连线并取句柄
hl2=plot([0,0],[1-r,1-r+d],'.-r','LineWidth',2);%画盘心到动点的连线并取句柄
x0=0;                                  %动点初始横坐标
y0=1-r+d;                              %动点初始纵坐标
pause                                  %暂停
dt=0.5/pi;                             %角度间隔
t=0;                                   %初始角
while get(gcf,'CurrentCharacter')~=char(27)%不按ESC键循环
    t=t+dt;                            %下一角度
    p=r/(1-r)*t;                       %圆心角
    xc=(1-r)*sin(p);                   %圆心横坐标
    yc=(1-r)*cos(p);                   %圆心纵坐标
    x1=sin(p);                         %圆盘与圆环接触点的横坐标
    y1=cos(p);                         %圆盘与圆环接触点的纵坐标
    x=xc-d*sin(t);                     %动点横坐标
    y=yc+d*cos(t);                     %动点纵坐标
    set(hc,'XData',xc+r*cos(phi),'YData',yc+r*sin(phi))%设置圆盘的位置
    set(hl1,'XData',[xc,x1],'YData',[yc,y1])%设置盘心到切线的位置
    set(hl2,'XData',[xc,x],'YData',[yc,y])%设置盘心到动点的位置
    plot([x0,x],[y0,y],'LineWidth',2)  %画动点的轨道
    x0=x;y0=y;                         %保留坐标
%    pause(0.01)
    drawnow                            %刷新屏幕
end                                    %结束循环

%程序结束.周群益设计
