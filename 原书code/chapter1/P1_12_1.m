%椭圆
clear                                  %清除变量
b=input('b/a=');                       %键盘输入纵半轴
%b=0.8;                                 %纵半轴参考值
%b=2;                                   %纵半轴参考值
%b=1.5;                                 %纵半轴参考值
x=-1:0.01:1;                           %横坐标向量
y=b*sqrt(1-x.^2);                      %纵坐标向量
figure                                 %创建图形窗口
plot(x,y,x,-y,'LineWidth',2)           %画曲线
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\ity/a','FontSize',16)         %加纵坐标
title(['椭圆(\itb/a\rm=',num2str(b),')'],'FontSize',16)%加标题
grid on                                %加网格
axis equal                             %使坐标间隔相等
hold on                                %保持属性
if b<1                                 %如果b<a
    c=sqrt(1-b^2);                     %计算半焦距
    plot([-c,c],[0,0],'.','MarkerSize',20)%画两个焦点
    text(c,0,num2str(c),'FontSize',16) %标记半焦距
else                                   %否则
    c=sqrt(b^2-1);                     %计算半焦距
    plot([0,0],[-c,c],'.','MarkerSize',20) %画两个焦点
    text(0,c,num2str(c),'FontSize',16) %标记半焦距
end                                    %结束条件
%画参变量曲线
% t=linspace(0,2*pi);                    %参数向量
% x=cos(t);                              %横坐标向量
% y=b*sin(t);                            %纵坐标向量
% plot(x,y,'+','LineWidth',2)            %画函数曲线

%程序结束.周群益设计
