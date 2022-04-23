%绕z轴旋转的标准抛物面
%----------------------------------------------------------
clear                                  %清除变量
f=inline('sqrt(2*x)');                 %抛物线的内函数
%f=inline('x.^2/2');                    %抛物线的内函数
xm=3;                                  %最大极径
x=0:0.01:xm;                           %极径向量
z=f(x);                                %竖坐标
y=zeros(size(x));                      %全0向量
figure                                 %创建图形窗口
h1=plot3(x,y,z,'LineWidth',2);         %画上母线并取句柄
hold on                                %保持属性
h2=plot3(x,y,-z,'r','LineWidth',2);    %画下母线并取句柄
fs=24;                                 %字体大小
title('标准抛物线','FontSize',fs)      %加标题
xlabel('\itx/p','FontSize',fs)         %加横坐标
ylabel('\ity/p','FontSize',fs)         %加纵坐标
zlabel('\itz/p','FontSize',fs)         %加竖坐标
grid on                                %加网格
box on                                 %加框
%----------------------------------------------------------
view(0,0)                              %设置正视角
pause                                  %暂停
p=linspace(0,2*pi);                    %极角向量
[P,R]=meshgrid(p,x);                   %两个向量化为矩阵
Z=f(R);                                %竖坐标
[X,Y]=pol2cart(P,R);                   %极坐标化为直角坐标
surf(X,Y,Z)                            %画旋转上曲面
surf(X,Y,-Z)                           %画旋转下曲面
axis equal                             %使坐标间隔相等
title('绕\itz\rm轴旋转的抛物面','FontSize',fs)%修改标题
shading interp                         %染色
alpha(0.8)                             %曲面半透明
view(3)                                %设置三维视角
pause                                  %暂停
zm=2.4;                                %最大竖坐标
z=-zm:0.1:zm;                          %竖坐标向量
xx=z.^2/2;                             %反函数母线
[X,Y,Z]=cylinder(xx,40);               %取三维旋转坐标
Z=Z*2*zm-zm;                           %扩大竖坐标范围
mesh(X,Y,Z)                            %画旋转网格曲面
pause                                  %暂停
for i=1:length(p)                      %按极角循环
    t=p(i);                            %取极角
    xx=x*cos(t);                       %旋转横坐标
    yy=x*sin(t);                       %旋转纵坐标
    set(h1,'XData',xx,'YData',yy)      %设置坐标
    set(h2,'XData',xx,'YData',yy)      %设置坐标
    drawnow                            %刷新屏幕
end                                    %结束循环

%程序结束.周群益设计
