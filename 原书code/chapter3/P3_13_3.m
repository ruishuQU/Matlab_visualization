%验证柯西中值定理
clear                                  %清除变量
a=0;                                   %第1点横坐标
b=pi/2;                                %第2点横坐标
syms x                                 %定义符号变量
y1=sin(x)                              %第1个符号函数
y2=x+cos(x)                            %第2个符号函数
f1=inline(y1);                         %第1个符号函数化为内线函数
f2=inline(y2);                         %第2个符号函数化为内线函数
k1=(f1(b)-f1(a))/(b-a);                %求第1个斜率
k2=(f2(b)-f2(a))/(b-a);                %求第2个斜率
dy1=diff(y1)                           %求第1个符号导数
dy2=diff(y2)                           %求第2个符号导数
s=dy1/dy2-k1/k2                        %符号方程
%s=dy1/k1-dy2/k2                        %符号方程(出错)
x0=solve(s)                            %求零点横坐标
x0=double(x0);                         %化为数值
df1=inline(dy1);                       %求第1个符号导数化为内线函数
df2=inline(dy2);                       %求第2个符号导数化为内线函数
dx=0.01;                               %间隔
x=a:dx:b;                              %横坐标向量
figure                                 %创建图形窗口
plot(x,f1(x),x,f2(x),'--',x,df1(x)/k1,'-.',x,df2(x)/k2,':',...
    'LineWidth',2)                     %画曲线
title('验证柯西中值定理','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
legend('\itf\rm_1','\itf\rm_2',...
    '\itf\rm_1\prime/\itk\rm_1','\itf\rm_2\prime/\itk\rm_2')%加图例
text(a,f1(a),['\itk\rm_1=',num2str(k1)],'FontSize',16)%加第1个斜率斜率标注
text(a,f2(a),['\itk\rm_2=',num2str(k2)],'FontSize',16)%加第2个斜率斜率标注
xx=[a,b,b,a];                          %横坐标向量
y1a=f1(a);                             %第1条曲线的起点纵坐标
y1b=f1(b);                             %第1条曲线的终点纵坐标
y2a=f2(a);                             %第2条曲线的起点纵坐标
y2b=f2(b);                             %第2条曲线的终点纵坐标
hold on                                %保持属性
plot(xx,[y1a,y1a,y1b,y1a],'-.',xx,[y2a,y2a,y2b,y2a],':','LineWidth',2)%画三角形
y0=df1(x0)/k1;                         %相对斜率
plot(x0,y0,'o')                        %画点
text(x0,y0,[num2str(x0),',',num2str(y0)],'FontSize',16)%加标注

%程序结束.周群益设计
