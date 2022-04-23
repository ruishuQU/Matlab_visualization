%曲线与横轴之间的平面绕竖轴旋转的体积和表面积的函数文件
function fun(x,z,t1,t2,tit)
dx=diff(x);                            %x对t的符号导数
dvz=2*pi*x*z*dx;                       %圆柱面的表面积
vz=int(dvz,t1,t2)                      %求绕z轴旋转体的体积
vz=abs(double(vz));                    %将符号换成数值
dz=diff(z);                            %z对t的符号导数
dl=sqrt(dx^2+dz^2);                    %弧的微分
dsz=2*pi*x*dl;                         %绕z旋转的环面的微分
fdsz=inline(dsz);                      %转化为内线函数
sz=quad(fdsz,t1,t2)                    %求绕z轴旋转体的表面积

fx=inline(x);                          %符号横坐标转化为内线函数
fz=inline(z);                          %符号纵坐标转化为内线函数
t=linspace(t1,t2);                     %参数向量
p=linspace(0,2*pi,101);                %Oxy平面圆周角向量
[P,T]=meshgrid(p,t);                   %两个向量化为矩阵
X=fx(T).*cos(P);                       %横坐标矩阵
Y=fx(T).*sin(P);                       %纵坐标矩阵
Z=fz(T);                               %高坐标矩阵
figure                                 %创建图形窗口
surf(X,Y,Z)                            %画旋转面
fs=24;                                 %字体大小
title([tit,'绕竖轴旋转的曲面'],'FontSize',fs)%加标题
xlabel('\itx/a','FontSize',fs)         %加横坐标
ylabel('\ity/a','FontSize',fs)         %加纵坐标
zlabel('\itz/a','FontSize',fs)         %加竖坐标
grid on                                %加网格
axis equal                             %使坐标间隔相等
shading interp                         %染色
alpha(0.5)                             %曲面半透明
box on                                 %加框
text(0,0,0,['\itV_z/a\rm^3=',num2str(vz),...
    ',\itS_z/a\rm^2=',num2str(sz)],'FontSize',16)%加文本
x=fx(t);                               %横坐标向量
z=fz(t);                               %竖坐标向量
rr=[x,x(end),x(1)];                    %连接极径
oo=zeros(size(rr));                    %全0向量
hold on                                %保持属性
h=fill3(rr,oo,[z,0,0],'y');            %画面
axis equal                             %使坐标间隔相等
pause                                  %暂停
for i=1:length(p)                      %按圆周角循环
    t=p(i);                            %取圆周角
    xx=rr*cos(t);                      %旋转横坐标
    yy=rr*sin(t);                      %旋转纵坐标
    set(h,'XData',xx,'YData',yy)       %设置坐标
    drawnow                            %刷新屏幕
end                                    %结束循环

%程序结束.周群益设计
