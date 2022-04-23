%多级心脏线的面积和长度的函数文件
function fun(n)
syms t                                 %定义符号极角变量
r=2*cos(t/n)^n;                        %符号极径
s=int(r^2/2,0,pi*n)                    %求符号积分
s=double(s);                           %化为数值
dl=sqrt(r^2+diff(r)^2);                %符号被积函数
l=int(dl,0,pi*n)                       %求符号积分
l=double(l);                           %化为数值

x=r*cos(t);                            %符号横坐标
y=r*sin(t);                            %符号纵坐标
fx=inline(x);                          %横坐标内线函数
fy=inline(y);                          %纵坐标内线函数
t=linspace(0,n*pi,500);                %极角向量
x=fx(t);                               %横坐标向量
y=fy(t);                               %纵坐标向量
figure                                 %创建图形窗口
fill(x,y,'y')                          %画填色图
title(['心脏线的面积和长度(\itn\rm=',num2str(n),')'],'FontSize',16)%标题
xlabel('\itx/a','FontSize',16)         %横坐标
ylabel('\ity/a','FontSize',16)         %纵坐标
grid on                                %加网格
axis equal                             %使坐标间隔相等
text(0,0,['\itS_n/a\rm^2=',num2str(s),...
    ',\itL_n/a\rm=',num2str(l)],'FontSize',16)%显示面积和长度

%程序结束.周群益设计
