%椭球体的体积的主程序
clear                                  %清除变量
a=5;                                   %横半轴
b=4;                                   %纵半轴
c=3;                                   %高半轴
P4_19_1fun(a,b,c)                      %调用函数文件
P4_19_1fun(a,a,a)                      %调用函数文件

b=0:0.1:2;                             %b半轴向量
c=0:0.1:1.5;                           %c半轴向量
[B,C]=meshgrid(b,c);                   %半轴矩阵
V=B.*C;                                %体积
figure                                 %创建图形窗口
surf(b,c,V)                            %画体积曲面
xlabel('\itb/a','FontSize',16)         %加横坐标
ylabel('\itc/a','FontSize',16)         %加纵坐标
zlabel('\itV/V\rm_0','FontSize',16)    %加纵坐标
title('椭球体的体积','FontSize',24)    %加标题
grid on                                %加网格
box on                                 %加框
alpha(0.5)                             %曲面半透明
b=0.8;                                 %相对纵半轴
c=0.6;                                 %相对高半轴
v=b.*c;                                %相对体积
hold on                                %保持属性
plot3(b,c,v,'or')                      %画点
text(b,c,v,['\itb\rm=',num2str(b),'\ita\rm,\itc\rm=',num2str(c),...
    '\ita\rm,\itV\rm=',num2str(v),'\itV\rm_0'],'FontSize',16)%加说明
v0=4*pi*a^3/3;                         %球体的体积
text(0,0,0,'\itV\rm_0=4\pi\ita\rm^3/3','FontSize',16)%加说明

%程序结束.周群益设计
