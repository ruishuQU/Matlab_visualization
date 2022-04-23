%开口向上的抛物线面积的矩形法的近似计算
clear                                  %清除变量
syms x                                 %定义符号变量
y=x^2;                                 %开口向上的符号抛物线
s=int(y,0,1)                           %积分求抛物线下的面积
s=double(s)                            %化为数值
f=inline(y)                            %内线函数
x=linspace(0,1);                       %横坐标向量
figure                                 %创建图形窗口
plot(x,f(x),'LineWidth',2)             %画抛物线
title('开口向上的抛物线下的面积和矩形法近似计算','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
text(0,0.8,['\itS\rm=',num2str(s)],'FontSize',16)%显示面积
h=text(0,0.5,'','FontSize',16);        %取句柄
grid on                                %加网格
hold on                                %保持属性
for m=1:10                             %循环
    n=2^m;                             %取2的幂
    x=linspace(0,1,n+1);               %横坐标向量
    y=f(x);                            %纵坐标向量
    stem(x,y,'.')                      %画杆线
    stairs(x,y,'r')                    %画阶梯线
    dx=1/n                             %取间隔
    sn=sum(y(1:end-1)*dx)              %求面积
    set(h,'String',['\itn\rm=',num2str(n),',\itS_n\rm=',num2str(sn)])%更换数值
    pause                              %暂停
end                                    %结束循环

%程序结束.周群益设计
