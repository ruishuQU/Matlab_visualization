%圆的走向的函数文件
function fun(x,y,tit)
a=linspace(0,2*pi,2000);               %角度向量
x=subs(x,'a',a);                       %替换横坐标向量
y=subs(y,'a',a);                       %替换纵坐标向量
figure                                 %创建图形窗口
fill(x,y,'y')                          %画填色圆
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\ity/a','FontSize',16)         %加纵坐标
title([tit,'环绕的圆'],'FontSize',16)  %加标题
axis equal                             %使坐标间隔相等
grid on                                %加网格
hold on                                %保持属性
comet(x,y)                             %画彗星式曲线动画

%程序结束.周群益设计
