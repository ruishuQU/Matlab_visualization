%星形线绕斜轴旋转体的体积和表面积的函数文件
function fun(x,z,t0)
x0=x*cos(t0)+z*sin(t0);                %旋转后的横坐标
z0=-x*sin(t0)+z*cos(t0);               %旋转后的竖坐标
dx0=diff(x0);                          %x0对t的符号导数
dvx0=pi*z0^2*dx0;                      %被积函数
vx0=2*int(dvx0,3*t0,t0)                %求绕z=x轴旋转的体积
vx0=double(vx0)                        %将符号换成数值
%f=inline(dvx0);                        %体积元转化为内线函数
%vx0=quad(f,5*t0,t0)                    %求绕z=x轴旋转的体积(同上)
dz0=diff(z0);                          %z0对t的符号导数
dl=sqrt(dx0^2+dz0^2);                  %弧的微分
dsx0=2*pi*z0*dl;                       %被积函数
f=inline(dsx0);                        %面积元转化为内线函数
sx0=quad(f,t0,5*t0)                    %求绕z=x轴旋转的表面积

fx0=inline(x0);                        %符号横坐标x0转化为内线函数
fz0=inline(z0);                        %符号纵坐标z0转化为内线函数
t=linspace(0,2*pi);                    %参变量向量
[P,T]=meshgrid(t);                     %向量化为矩阵
X=fz0(T).*cos(P);                      %横坐标矩阵
Y=fz0(T).*sin(P);                      %纵坐标矩阵
Z=fx0(T);                              %竖坐标矩阵
X0=X*cos(t0)+Z*sin(t0);                %逆时针旋转的横坐标
Z0=-X*sin(t0)+Z*cos(t0);               %逆时针旋转的竖坐标
figure                                 %创建图形窗口
surf(Z0,Y,X0)                          %画旋转面
if t0>0                                %如果轴的角度大于0
    tit='\itz\rm=\itx\rm';             %z=x轴的标题
    text(-1,0,-1,['\itV_z_=_x/a\rm^3=',num2str(vx0),...
        ',\itS_z_=_x/a\rm^2=',num2str(sx0)],'FontSize',16)%加文本
else                                   %否则
    tit='\itz\rm=-\itx\rm';            %z=-x轴的标题
    text(-1,0,-1,['\itV_z_=_-_x/a\rm^3=',num2str(vx0),...
        ',\itS_z_=_-_x/a\rm^2=',num2str(sx0)],'FontSize',16)%加文本
end                                    %结束条件
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\ity/a','FontSize',16)         %加纵坐标
zlabel('\itz/a','FontSize',16)         %加竖坐标
title(['星形线绕',tit,'轴旋转所包围的体积和表面积'],'FontSize',24)%加标题
grid on                                %加网格
axis equal                             %使坐标间隔相等
alpha(0.5)                             %曲面半透明
shading interp                         %染色
box on                                 %加框
hold on                                %保持属性
plot3([-1,1],[0,0],[-1,1]*sign(t0),'--','LineWidth',2)%画轴线

x=fx0(t);                              %母线横坐标向量
z=fz0(t);                              %母线竖坐标向量
o=zeros(size(t));                      %全0向量
xx=x*cos(t0)+z*sin(t0);                %逆时针旋转的横坐标
zz=-x*sin(t0)+z*cos(t0);               %逆时针旋转的竖坐标
h=fill3(xx,o,zz,'b');                  %画面
pause                                  %暂停
for i=1:length(t)                      %按圆周角循环
    pp=t(i);                           %取圆周角
    x=fx0(t)*cos(pp);                  %横坐标向量
    yy=fx0(t)*sin(pp);                 %纵坐标向量
    z=fz0(t);                          %竖坐标向量
    xx=x*cos(t0)+z*sin(t0);            %逆时针旋转的横坐标
    zz=-x*sin(t0)+z*cos(t0);           %逆时针旋转的竖坐标
    set(h,'XData',xx,'YData',yy,'ZData',zz)%设置坐标
    drawnow                            %刷新屏幕
end                                    %结束循环

%程序结束.周群益设计
