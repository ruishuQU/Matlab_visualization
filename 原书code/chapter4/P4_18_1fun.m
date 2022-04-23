%参变量方程曲线与横轴之间的平面绕横轴旋转的体积和表面积的函数文件
function fun(x,z,z0,t1,t2,tit)
z=z-z0;                                %竖坐标平移
dx=diff(x);                            %x对t的符号导数
dvx=pi*(z0^2-z^2)*dx;                  %绕X轴旋转的薄圆的体积
vx=int(dvx,t1,t2)                      %绕X轴旋转体的体积
vx=abs(double(vx));                    %将符号换成数值
dz=diff(z);                            %z对t的符号导数
dl=sqrt(dx^2+dz^2);                    %弧的微分
dsx=2*pi*z*dl;                         %绕X旋转的环面的微分
fdsx=inline(dsx);                      %转化为内线函数
sx=abs(quad(fdsx,t1,t2))               %求绕X轴旋转体的表面积

fx=inline(x);                          %符号横坐标转化为内线函数
fz=inline(z);                          %符号竖坐标转化为内线函数
t=linspace(t1,t2);                     %参变量向量
p=linspace(0,2*pi,101);                %Oyz平面圆周角向量
[P,T]=meshgrid(p,t);                   %两个向量化为矩阵
X=fz(T).*cos(P);                       %横坐标矩阵
Y=fz(T).*sin(P);                       %纵坐标矩阵
Z=fx(T);                               %竖坐标矩阵
figure                                 %创建图形窗口
surf(Z,Y,X+z0)                         %画旋转面
fs=24;                                 %字体大小
if z0==0                               %如果旋转轴的竖坐标等于0
    title([tit,'绕横轴旋转的曲面'],'FontSize',fs)%加标题
    text(0,0,z0,['\itV_x/a\rm^3=',num2str(vx),...
        ',\itS_x/a\rm^2=',num2str(sx)],'FontSize',16)%加文本
else                                   %否则
    title([tit,'绕\itz\rm_0/\ita\rm=',num2str(z0),'轴旋转的曲面'],...
        'FontSize',fs)                 %加标题
    text(0,0,z0,['\itV_X/a\rm^3=',num2str(vx),...
        ',\itS_X/a\rm^2=',num2str(sx)],'FontSize',16)%加文本
end                                    %结束条件
xlabel('\itx/a','FontSize',fs)         %加横坐标
ylabel('\ity/a','FontSize',fs)         %加纵坐标
zlabel('\itz/a','FontSize',fs)         %加竖坐标
grid on                                %加网格
axis equal                             %使坐标间隔相等
shading interp                         %染色
alpha(0.5)                             %曲面半透明
box on                                 %加框
x=fx(t);                               %横坐标向量
z=fz(t);                               %竖坐标向量
rr=[x,x(end),x(1)];                    %连接极径
oo=zeros(size(rr));                    %全0向量
hold on                                %保持属性
h=fill3(rr,oo,[z,z(end),z(1)]+z0,'y'); %画面
pause                                  %暂停
for i=1:length(p)                      %按圆周角循环
    t=p(i);                            %取圆周角
    zz=[z,z(end),z(1)]*cos(t)+z0;      %旋转竖坐标
    yy=[z,z(end),z(1)]*sin(t);         %旋转纵坐标
    set(h,'YData',yy,'ZData',zz)       %设置坐标
    drawnow                            %刷新屏幕
end                                    %结束循环

%程序结束.周群益设计
