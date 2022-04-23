%曲线与横轴之间的平面绕竖直轴旋转的体积和表面积的函数文件
function fun(z,xm,tit)
syms x                                 %定义符号变量
dvz=2*pi*x*z;                          %圆柱面的表面体
vz=int(dvz,0,x)                        %绕z轴旋转体的体积
% dz=diff(z)                             %求高坐标的微分
% dl=sqrt(1+dz^2)                        %弧的微分
% dl=simplify(dl)                        %化简符号被积函数
% dsz=2*pi*x*dl;                         %绕z旋转的环面的微分
% sz=int(dsz,0,x)                        %绕z轴旋转面的表面积
% fsz=inline(sz);                        %表面积的内线函数

f=inline(z);                           %母线转化为内线函数
fvz=inline(vz);                        %体积的内线函数
dx=0.01;                               %横坐标间隔
x=0:dx:xm;                             %横坐标向量
z=f(x);                                %纵坐标向量即母线向量
vz=fvz(x);                             %体积向量
%sz=fsz(x);                             %表面积向量
dz=diff(z)/dx;                         %通过差分求纵坐标对横坐标的数值导数
dz=[dz(1),(dz(1:end-1)+dz(2:end))/2,dz(end)];%求平均值
dl=sqrt(1+dz.^2);                      %弧的数值微分
dsz=2*pi*x.*dl;                        %绕z旋转的环面的微分
sz=cumtrapz(dsz)*dx;                   %用梯形法求面积
figure                                 %创建图形窗口
plot(x,z,x,vz,'--',x,sz,'-.','LineWidth',2)%画母线,体积和表面积
fs=20;                                 %字体大小
title([tit,'与横轴之间的平面绕高轴旋转的体积和表面积'],'FontSize',fs)%加标题
xlabel('\itx/a','FontSize',fs)         %加横坐标
grid on                                %加网格
legend('\itz/a','\itV_z/a\rm^3','\itS_z/a\rm^2',2)%加图例

p=linspace(0,2*pi,101);                %Oxy平面圆周角
[P,R]=meshgrid(p,x);                   %两个向量化为矩阵
Z=f(R);                                %高坐标
[X,Y]=pol2cart(P,R);                   %极坐标化为直角坐标
figure                                 %创建图形窗口
surf(X,Y,Z)                            %画曲面
title([tit,'绕高轴旋转的曲面'],'FontSize',fs)%加标题
xlabel('\itx/a','FontSize',fs)         %加横坐标
ylabel('\ity/a','FontSize',fs)         %加纵坐标
zlabel('\itz/a','FontSize',fs)         %加高坐标
grid on                                %加网格
box on                                 %加框
shading interp                         %染色
alpha(0.5)                             %曲面半透明
rr=[x,xm,x(1)];                        %连接极径
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
