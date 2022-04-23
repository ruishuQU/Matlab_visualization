%椭球体的函数文件
function fun(a,b,c)
v=4/3*pi*a*b*c;                        %体积
figure                                 %创建图形窗口
ellipsoid(0,0,0,a,b,c)                 %画中心在原点的椭球体
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
zlabel('\itz','FontSize',16)           %加高坐标
title('椭球体','FontSize',24)          %加标题
if a==b&b==c,title('球体','FontSize',24),end%
grid on                                %加网格
axis equal                             %使坐标间隔相等
shading interp                         %染色
box on                                 %加框
text(0,0,['\ita\rm=',num2str(a),',\itb\rm=',num2str(b),...
    ',\itc\rm=',num2str(c),',\itV\rm=',num2str(v)],'FontSize',16)%加说明
x=-a:0.05:a;                           %横坐标向量
t=linspace(0,2*pi);                    %圆周角向量
o=ones(size(t));                       %全1向量
hold on                                %保持属性
h=fill3(0,0,0,'y');                    %画面
alpha(0.5)                             %曲面半透明
pause                                  %暂停
for i=1:length(x)                      %按横坐标循环
    xx=x(i);                           %取横坐标
    yy=b*sqrt(1-xx^2/a^2)*cos(t);      %计算纵坐标
    zz=c*sqrt(1-xx^2/a^2)*sin(t);      %计算高坐标
    set(h,'XData',xx*o,'YData',yy,'ZData',zz)%设置坐标
    drawnow                            %刷新屏幕
    if xx==a/2,pause,end               %暂停判断
end                                    %结束循环

%程序结束.周群益设计
