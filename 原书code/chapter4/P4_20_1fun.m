%极坐标曲线绕极轴旋转所包围的体积和表面积的函数文件
function fun(r,tm,tit)                 
syms t                                 %定义符号变量
dvr=2*pi/3*r^3*sin(t);                 %被积函数
vr=int(dvr,0,tm)                       %求绕r轴旋转的体积
vr=double(vr)                          %将符号换成数值
dl=sqrt(r^2+diff(r)^2);                %弧的微分
dsr=2*pi*r*sin(t)*dl;                  %被积函数
sr=int(dsr,0,tm)                       %求绕r轴旋转的表面积
sr=double(sr)                          %将符号换成数值

fr=inline(r);                          %转化为内线函数
t=linspace(-tm,tm);                    %Oxz极角向量
p=linspace(0,2*pi,101);                %Oyz圆周角向量
[T,P]=meshgrid(t,p);                   %极角和圆周角向量化为矩阵
X=fr(T).*sin(T).*cos(P);               %横坐标矩阵
Y=fr(T).*sin(T).*sin(P);               %纵坐标矩阵
Z=fr(T).*cos(T);                       %高坐标矩阵
figure                                 %创建图形窗口
surf(Z,Y,X)                            %画旋转面
title([tit,'绕极轴旋转的曲面'],'FontSize',24)%加标题
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\ity/a','FontSize',16)         %加纵坐标
zlabel('\itz/a','FontSize',16)         %加高坐标
grid on                                %加网格
axis equal                             %使坐标间隔相等
alpha(0.5)                             %曲面半透明
shading interp                         %染色
box on                                 %加框
text(0,0,0,['\itV_r/a\rm^3=',num2str(vr),...
    ',\itS_r/a\rm^2=',num2str(sr)],'FontSize',16)%加文本
rr=fr(t);                              %极径
x=rr.*cos(t);                          %横坐标向量
z=rr.*sin(t);                          %高坐标向量
oo=zeros(size(rr));                    %全0向量
hold on                                %保持属性
h=fill3(x,oo,z,'y');                   %画面
pause                                  %暂停
for i=1:length(p)                      %按圆周角循环
    t=p(i);                            %取圆周角
    zz=z*cos(t);                       %旋转高坐标
    yy=z*sin(t);                       %旋转纵坐标
    set(h,'YData',yy,'ZData',zz)       %设置坐标
    drawnow                            %刷新屏幕
end                                    %结束循环

%程序结束.周群益设计
