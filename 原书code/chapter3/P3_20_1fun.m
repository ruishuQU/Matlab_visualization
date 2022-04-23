%极坐标方程和渐屈线的函数文件
function fun(thm,r,tit)
syms t                                 %定义符号极角
dr_dt=diff(r);                         %求r对t的符号导数dr/dt
d2r_dt2=diff(r,2);                     %求r对t的符号二阶导数d2r/dt2
r1=r^2+dr_dt^2;                        %分子的一部分
r2=r^2+2*dr_dt^2-r*d2r_dt2;            %分母
rho=r1^(3/2)/abs(r2)                   %曲率半径
rho=simplify(rho)                      %化简
x=r*cos(t);                            %直角横坐标
y=r*sin(t);                            %直角纵坐标
% dx_dt=diff(x);                         %求x对t的符号导数dx/dt
% dy_dt=diff(y);                         %求y对t的符号导数dy/dt
% xc=r*cos(t)-dy_dt*r1/r2;               %渐屈线横坐标
% yc=r*sin(t)+dx_dt*r1/r2;               %渐屈线横坐标
xc=r*cos(t)-(dr_dt*sin(t)+r*cos(t))*r1/r2;%渐屈线横坐标
xc=simplify(xc)                        %化简
yc=r*sin(t)+(dr_dt*cos(t)-r*sin(t))*r1/r2;%渐屈线纵坐标
yc=simplify(yc)                        %化简
rc=sqrt(xc^2+yc^2);                    %渐屈线的极坐标方程
rc=simplify(rc)                        %化简

fx=inline(x);                          %横坐标转化为内线函数
fy=inline(y);                          %纵坐标转化为内线函数
fr=inline(rho);                        %曲率半径转化为内线函数
fxc=inline(xc);                        %渐屈线横坐标转化为内线函数
fyc=inline(yc);                        %渐屈线纵坐标转化为内线函数
t=linspace(0,thm);                     %极角向量
x=fx(t);                               %取横坐标数值
y=fy(t);                               %取纵坐标数值
rho=fr(t);                             %取曲率半径值
xc=fxc(t);                             %取渐屈线横坐标值
yc=fyc(t);                             %取渐屈线纵坐标值
figure                                 %创建图形窗口
plot(x,y,xc,yc,'--',x,rho,'-.','LineWidth',2)%画曲线
title([tit,'和渐屈线以及曲率半径'],'FontSize',16)%加标题
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\ity/a','FontSize',16)         %加纵坐标
legend(tit,'渐屈线','曲率半径',3)      %加图例
hold on                                %保持图像
hc=plot(xc(1)+rho(1)*cos(t),yc(1)+rho(1)*sin(t),'r--');%画第1个曲率圆并取句柄
hr=plot([x(1),xc(1)],[y(1),yc(1)],'r--.','LineWidth',2);%画半径并取句柄
grid on                                %加网格
axis equal                             %使坐标间隔相等
pause                                  %暂停
for i=2:length(t)                      %按极角循环
    set(hc,'XData',xc(i)+rho(i)*cos(t),'YData',yc(i)+rho(i)*sin(t))%设置曲率圆
    set(hr,'XData',[x(i),xc(i)],'YData',[y(i),yc(i)])%设置半径
%    plot([xc(i-1),xc(i)],[yc(i-1),yc(i)],'LineWidth',2)%画圆心轨迹
    pause(0.1)                         %延时
end                                    %结束循环

%程序结束.周群益设计
