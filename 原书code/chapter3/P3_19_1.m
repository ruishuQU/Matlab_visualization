%椭圆参数方程和导数
clear                                  %清除变量
syms t b                               %定义符号变量
x=cos(t);                              %符号横坐标
y=b*sin(t);                            %符号纵坐标
dx_dt=diff(x)                          %x对t的符号导数dx/dt
dy_dt=diff(y)                          %y对t的符号导数dy/dt
dy_dx=dy_dt/dx_dt                      %y对x的符号导数dy/dx
d2y_dxdt=diff(dy_dx)                   %dy/dx对t的符号导数d2y/dxdt

dfx=inline(dx_dt);                     %dx/dt的内线函数
dfy=inline(dy_dt);                     %dy/dt的内线函数
d2fy=inline(d2y_dxdt);                 %d2y/dxdt的内线函数
t=linspace(-pi,pi);                    %参数向量
b=0.5:0.5:2;                           %纵半轴向量
[B,T]=meshgrid(b,t);                   %参数和纵半轴矩阵
dX=dfx(T);                             %dx/dt的值
dY=dfy(B,T);                           %dy/dt的值
figure                                 %创建图形窗口
subplot(2,1,1)                         %取子图
plot(t,dY./dX,'-+','LineWidth',2)      %画曲线族
legend([repmat('\itb/a\rm=',length(b),1),num2str(b')],4)%图例
title('椭圆随参数变化的导数','FontSize',16)%加标题
grid on                                %加网格
xlabel('\itt','FontSize',16)           %加横坐标
ylabel('\ity\prime','FontSize',16)     %加纵坐标
axis([-pi,pi,-3,3])                    %设置范围
fx=inline(x);                          %x的内线函数
fy=inline(y);                          %y的内线函数
X=fx(T);                               %x的值
Y=fy(B,T);                             %y的值
dt=t(2)-t(1);                          %间隔
dX=diff(X)/dt;                         %求x对t的数值导数
dX=[dX(1,:);(dX(1:end-1,:)+dX(2:end,:))/2;dX(end,:)];%求平均值
dY=diff(Y)/dt;                         %求差分
dY=[dY(1,:);(dY(1:end-1,:)+dY(2:end,:))/2;dY(end,:)];%求平均值
dY_dX=dY./dX;                          %求数值导数
hold on                                %保持属性
plot(t,dY_dX,'o','LineWidth',2)        %画曲线族
text(-pi,0,'加号表示解析解,圈表示数值解.','FontSize',16)%加说明

d2Y=d2fy(B,T);                         %d2y/dxdt的值
subplot(2,1,2)                         %取子图
plot(t,d2Y./dX,'-+','LineWidth',2)     %画曲线族
legend([repmat('\itb/a\rm=',length(b),1),num2str(b')])%图例
title('椭圆随参数变化的二阶导数','FontSize',16)%加标题
grid on                                %加网格
xlabel('\itt','FontSize',16)           %加横坐标
ylabel('\ity\prime\prime','FontSize',16)%加纵坐标
axis([-pi,pi,-3,3])                    %设置范围
d2Y=diff(dY_dX)/dt;                    %求差分
d2Y=[d2Y(1,:);(d2Y(1:end-1,:)+d2Y(2:end,:))/2;d2Y(end,:)];%求平均值
d2Y_dX2=d2Y./dX;                       %求数值导数
hold on                                %保持属性
plot(t,d2Y_dX2,'o','LineWidth',2)      %画曲线族
text(-pi,0,'加号表示解析解,圈表示数值解.','FontSize',16)%加说明

x=fx(t);                               %x的值
x(t<0)=NaN;                            %参数小于0的横坐标改为非数
figure                                 %创建图形窗口
subplot(2,1,1)                         %取子图
plot(x,dY./dX,'LineWidth',2)           %画曲线族
legend([repmat('\itb/a\rm=',length(b),1),num2str(b')])%加图例
title('椭圆随横坐标变化的导数','FontSize',16)%加标题
grid on                                %加网格
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\ity\prime','FontSize',16)     %加纵坐标
axis([-1,1,-3,3])                      %设置范围
subplot(2,1,2)                         %取子图
plot(x,d2Y./dX,'LineWidth',2)          %画曲线族
legend([repmat('\itb/a\rm=',length(b),1),num2str(b')])%加图例
title('椭圆随横坐标变化的二阶导数','FontSize',16)%加标题
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\ity\prime\prime','FontSize',16)%加纵坐标
axis([-1,1,-3,0])                      %设置范围
grid on                                %加网格

%程序结束.周群益设计
