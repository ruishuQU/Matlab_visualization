%极坐标曲线的面积和周长的函数文件
function fun(r,t1,t2,tit)
syms t                                 %定义符号极角变量
s=int(r^2/2,t1,t2)                     %求符号积分
s=double(s)                            %化为数值
dl=sqrt(r^2+diff(r)^2);                %符号被积函数
fl=inline(dl);                         %弧长的内线函数
l=quad(fl,t1,t2)                       %数值积分求弧长
% l=int(dl,t1,t2)                        %求符号积分
% l=double(l)                            %化为数值(出错)
%----------------------------------------------------------
x=r*cos(t);                            %符号横坐标
y=r*sin(t);                            %符号纵坐标
fx=inline(x);                          %横坐标转化为内线函数
fy=inline(y);                          %纵坐标转化为内线函数
t=linspace(t1,t2);                     %极角向量
x=fx(t);                               %横坐标
y=fy(t);                               %纵坐标
figure                                 %创建图形窗口
fill(x,y,'y')                          %画填色图
title([tit,'的面积和周长'],'FontSize',16)%加标题
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\ity/a','FontSize',16)         %加纵坐标
grid on                                %加网格
axis equal                             %使坐标间隔相等
text(0,0,['\itS/a\rm^2=',num2str(s),...
    ',\itL/a\rm=',num2str(l)],'FontSize',16)%显示面积和长度

%程序结束.周群益设计
