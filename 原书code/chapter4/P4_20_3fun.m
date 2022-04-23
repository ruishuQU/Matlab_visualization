%余弦双纽线绕z=x轴和z=-x轴旋转的体积和表面积的函数文件
function fun(t0)                 
tm=pi/4;                               %右叶的最大角度
syms t                                 %定义符号变量
r=sqrt(cos(2*t));                      %余弦双纽线符号极径
dvzx=2*pi/3*r^3*sin(tm-t);             %被积函数
fdvzx=inline(dvzx);                    %转化为内线函数
vzx=2*quad(fdvzx,-tm,tm)               %求绕z=x轴旋转的体积
dl=sqrt(r^2+diff(r)^2);                %弧的微分
dszx=2*pi*r*sin(tm-t)*dl;              %被积函数
fdszx=inline(dszx);                    %转化为内线函数
szx=2*quad(fdszx,-tm,tm)               %求绕z=x轴旋转的表面积
%----------------------------------------------------------
fr=inline(r);                          %转化为内线函数
rr=subs(r,'t',sym(t0)-t)               %旋转的极径使旋转轴为x轴
frr=inline(rr)                         %转化为内线函数
t=linspace(0,2*t0);                    %oxz平面极角向量
p=linspace(0,2*pi);                    %圆周角向量
[T,P]=meshgrid(t,p);                   %两个向量化为矩阵
X=frr(T).*sin(T).*cos(P);              %横坐标矩阵
Y=frr(T).*sin(T).*sin(P);              %纵坐标矩阵
Z=frr(T).*cos(T);                      %高坐标矩阵
XX=X*cos(t0)+Z*sin(t0);                %逆时针旋转的横坐标
ZZ=-X*sin(t0)+Z*cos(t0);               %逆时针旋转的纵坐标
figure                                 %创建图形窗口
surf(ZZ,Y,XX)                          %画旋转面
hold on                                %保持属性
surf(-ZZ,Y,-XX)                        %画旋转面
fs=20;                                 %字体大小
if t0>0                                %如果轴的角度大于0
    title('双纽线绕\it\theta\rm_0=\pi/4轴旋转的体积和表面积',...
        'FontSize',fs)                 %加标题
    text(-1,0,-1,['\itV_z_=_x/a\rm^3=',num2str(vzx),...
        ',\itS_z_=_x/a\rm^2=',num2str(szx)],'FontSize',fs)%加文本
else                                   %否则
    title('双纽线绕\it\theta\rm_0=-\pi/4轴旋转的体积和表面积',...
        'FontSize',fs)                 %加标题
    text(-1,0,-1,['\itV_z_=_-_x/a\rm^3=',num2str(vzx),...
        ',\itS_z_=_-_x/a\rm^2=',num2str(szx)],'FontSize',fs)%加文本
end                                    %结束条件
xlabel('\itx/a','FontSize',fs)         %加横坐标
ylabel('\ity/a','FontSize',fs)         %加纵坐标
zlabel('\itz/a','FontSize',fs)         %加高坐标
grid on                                %加网格
axis equal                             %使坐标间隔相等
alpha(0.5)                             %曲面半透明
shading interp                         %染色
box on                                 %加框
plot3([-1,1]*sign(t0),[0,0],[-1,1],'--','LineWidth',2)%画旋转轴
x=frr(t).*sin(t);                      %横坐标向量
z=frr(t).*cos(t);                      %纵坐标向量
xx=x*cos(t0)+z*sin(t0);                %逆时针旋转的横坐标
zz=-x*sin(t0)+z*cos(t0);               %逆时针旋转的纵坐标
o=zeros(size(t));                      %全0向量
h1=fill3(xx,o,zz,'b');                 %画面
h2=fill3(-xx,o,zz,'b');                %画面
pause                                  %暂停
for i=1:length(p)                      %按圆周角循环
    pp=p(i);                           %取圆周角
    x=frr(t).*sin(t).*cos(pp);         %横坐标向量
    yy=frr(t).*sin(t).*sin(pp);        %纵坐标向量
    z=frr(t).*cos(t);                  %高坐标向量
    xx=x*cos(t0)+z*sin(t0);            %逆时针旋转的横坐标
    zz=-x*sin(t0)+z*cos(t0);           %逆时针旋转的纵坐标
    set(h1,'XData',xx,'YData',yy,'ZData',zz)%设置坐标
    set(h2,'XData',-xx,'YData',-yy,'ZData',-zz)%设置坐标
    drawnow                            %刷新屏幕
end                                    %结束循环
%检验图形
% t=linspace(-tm,tm);                    %oxz平面极角向量
% x=fr(t).*cos(t);                       %横坐标向量
% z=fr(t).*sin(t);                       %纵坐标向量
% o=zeros(size(t));                      %全0向量
% fill3(x,o,z,'b')                       %画面
% fill3(-x,o,z,'b')                      %画面
% plot3([-1,1],[0,0],[-1,1],'--','LineWidth',2)%画旋转轴

%程序结束.周群益设计
