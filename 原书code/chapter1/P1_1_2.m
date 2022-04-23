%绝对值函数的功能之二
clear                                  %清除变量
z=input('请输入复数:');                %键盘输入法复数
%z=3+4i;                                %复数参考值
x=real(z);                             %取实部
y=imag(z);                             %取虚部
figure                                 %创建图形窗口
plot([0,x],[0,y],'-o','LineWidth',2)   %画线
title('用绝对值函数求复数的模','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
grid on                                %加网格
text(x,y,[num2str(x),',',num2str(y)],'FontSize',16)%显示坐标
r=abs(z);                              %求模
text(x/2,y/2,['\itr\rm=',num2str(r)],'FontSize',16)%显示模
a=angle(z);                            %求辐角
t=linspace(0,a);                       %角度向量
x=r/10*cos(t);                         %弧的横坐标
y=r/10*sin(t);                         %弧的纵坐标
hold on                                %保持属性
plot(x,y,'LineWidth',2)                %画弧
axis equal                             %使坐标间隔相等
text(0,0,['\it\theta\rm=',num2str(a*180/pi),'\circ'],'FontSize',16)%显示辐角

%程序结束.周群益设计
