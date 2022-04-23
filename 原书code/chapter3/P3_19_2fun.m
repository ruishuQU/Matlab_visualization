%椭圆轨道的曲率圆和渐屈线的函数文件
function fun(e)
a=0:360;                               %角度向量
t=a*pi/180;                            %化为弧度
x=cos(t);                              %横坐标向量
y=sqrt(1-e^2)*sin(t);                  %纵坐标向量
figure                                 %创建图形窗口
plot(x,y,'LineWidth',2)                %画椭圆
grid on                                %加网格
axis([-1,1,-1,1])                      %设置曲线范围
axis equal                             %使坐标间隔相等
fs=16;                                 %字体大小
title('椭圆轨道的曲率圆和渐屈线','FontSize',fs)%加标题
xlabel('\itx/a','FontSize',fs)         %加横坐标
ylabel('\ity/a','FontSize',fs)         %加纵坐标
text(0,0,['\ite\rm=',num2str(e)],'FontSize',fs)%标记偏心率文本
rho=(1-e^2*cos(t).^2).^(3/2)./sqrt(1-e^2);%所有曲率半径
xc=e^2*cos(t).^3;                      %曲率圆心横坐标
yc=-e^2/sqrt(1-e^2)*sin(t).^3;         %曲率圆心纵坐标
hold on                                %保持图像
hl=plot([xc(1),1],[0,0],'r--.','LineWidth',2);%画半径并取句柄
hc=plot(xc(1)+rho(1)*cos(t),yc(1)+rho(1)*sin(t),'r--');%画第1个曲率圆并取句柄
for i=2:length(t)                      %按参变量循环
    if i==2|i==50|i==92,pause,end      %判断暂停
    set(hc,'XData',xc(i)+rho(i)*cos(t),'YData',yc(i)+rho(i)*sin(t))%设置曲率圆
    set(hl,'XData',[x(i),xc(i)],'YData',[y(i),yc(i)])%设置半径
    plot([xc(i-1),xc(i)],[yc(i-1),yc(i)],'LineWidth',2)%画圆心轨迹
    pause(0.1)                         %延时(自动动画)
end                                    %结束循环

%程序结束.周群益设计
