%抛物线的面积和弧长
clear                                  %清除变量
syms y                                 %定义符号变量
x=y^2/2;                               %符号反函数
s=x*y-int(x,0,y)                       %求符号基本定积分
dx=diff(x);                            %x对y的导数
dl=sqrt(1+dx^2);                       %符号被积函数
l=int(dl,0,y)                          %求符号基本定积分

ym=2;                                  %最大纵坐标
f=inline(x)                            %抛物线的内线函数
y=0:0.1:ym;                            %横坐标向量
x=f(y);                                %抛物线的纵坐标向量
s=subs(s,'y',y);                       %抛物线的面积向量
l=subs(l,'y',y);                       %抛物线的长度向量
figure                                 %创建图形窗口
plot(x,y,x,s,'x--',x,l,'o-.','LineWidth',2)%画曲线
xlabel('\itx/p','FontSize',16)         %加横坐标
title('抛物线的面积和弧长','FontSize',16)%加标题
hold on                                %保持属性
grid on                                %加网格
fill([x,ym,0],[y,0,0],'y')             %画填色图
alpha(0.5)                             %平面半透明
legend('\ity/p','\itS/p\rm^2','\itL/p',0)%加图例
%检验结果
% s=y.^3/3;
% l=(log(y+sqrt(1+y.^2))+y.*sqrt(1+y.^2))/2;
% plot(x,s,'d',x,l,'.')

%程序结束.周群益设计
