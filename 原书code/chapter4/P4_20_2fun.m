%极坐标曲线绕竖直轴旋转体的体积和表面积的函数文件
function fun(r,t1,t2,x0,tit)                 
syms t                                 %定义符号变量
dvz=pi*r^2*(2/3*r*cos(t)-x0);          %被积函数
fdvz=inline(dvz);                      %转化为内线函数
vz=quad(fdvz,t1,t2)                    %求数值积分
dl=sqrt(r^2+diff(r)^2);                %弧的微分
dsz=2*pi*(r*cos(t)-x0)*dl;             %被积函数
fdsz=inline(dsz);                      %转化为内线函数
sz=quad(fdsz,t1,t2)                    %求数值积分

fr=inline(r);                          %转化为内线函数
t=linspace(t1,t2);                     %极角向量
p=linspace(0,2*pi);                    %圆周角向量
[T,P]=meshgrid(t,p);                   %极角和圆周角向量化为矩阵
X=(fr(T).*cos(T)-x0).*cos(P);          %横坐标矩阵
Y=(fr(T).*cos(T)-x0).*sin(P);          %纵坐标矩阵
Z=fr(T).*sin(T);                       %高坐标矩阵
figure                                 %创建图形窗口
surf(X,Y,Z)                            %画旋转面
if x0==0                               %如果是纵轴
    title([tit,'绕高轴旋转所包围的体积和表面积'],'FontSize',20)%加标题
    xlabel('\itx/a','FontSize',16)     %加横坐标
    text(0,0,0,['\itV_z/a\rm^3=',num2str(vz),...
        ',\itS_z/a\rm^2=',num2str(sz)],'FontSize',16)%加文本
else                                   %否则
    title([tit,'绕\itx\rm_0/\ita\rm=',num2str(x0),...
        '轴旋转所包围的体积和表面积'],'FontSize',20)%加标题
    xlabel('\itX/a','FontSize',16)     %加横坐标
    text(0,0,0,['\itV_Z/a\rm^3=',num2str(vz),...
        ',\itS_Z/a\rm^2=',num2str(sz)],'FontSize',16)%加文本
end                                    %结束条件
ylabel('\ity/a','FontSize',16)         %加纵坐标
zlabel('\itz/a','FontSize',16)         %加高坐标
grid on                                %加网格
axis equal                             %使坐标间隔相等
alpha(0.5)                             %曲面半透明
shading interp                         %染色
box on                                 %加框

x=fr(t).*cos(t)-x0;                    %横坐标向量
z=fr(t).*sin(t);                       %纵坐标向量
rr=[x,x(end),x(1)];                    %连接极径
oo=zeros(size(rr));                    %全0向量
hold on                                %保持属性
h=fill3(rr,oo,[z,0,0],'y');            %画面
pause                                  %暂停
for i=1:length(p)                      %按圆周角循环
    pp=p(i);                           %取圆周角
    xx=rr*cos(pp);                     %旋转横坐标
    yy=rr*sin(pp);                     %旋转纵坐标
    set(h,'XData',xx,'YData',yy)       %设置坐标
    drawnow                            %刷新屏幕
end                                    %结束循环
%检验图形
% x=fr(t).*cos(t);                       %横坐标向量
% y=fr(t).*sin(t);                       %纵坐标向量
% o=zeros(size(t));                      %全0向量
% hold on                                %保持属性
% fill3(x-x0,o,y,'b')                    %画面

%程序结束.周群益设计
