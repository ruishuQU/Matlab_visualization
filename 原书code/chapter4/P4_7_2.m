%不定积分的分部积分法和验证
clear                                  %清除变量
syms x                                 %定义符号变量
u=log(x)                               %被积函数的第一部分作为第1个函数
dv=1/(1+x^2)^(3/2)                     %被积函数的第二部分是某函数的导数
y=u*dv;                                %被积函数的符号表达式
s=int(y)                               %函数的符号不定积分
v=int(dv)                              %第2个函数
s=u*v-int(v*diff(u))                   %函数的符号不定积分
%----------------------------------------------------------
f=inline(y)                            %内线函数
c=0.6:0.1:1;                           %常数向量
x0=0.25;                               %最小横坐标
xm=5;                                  %最大横坐标
x=linspace(x0,xm);                     %横坐标向量
[C,X]=meshgrid(c,x);                   %常数和坐标矩阵
F=subs(s,'x',X)+C;                     %不定积分矩阵
figure                                 %创建图形窗口
plot(x,f(x),'--','LineWidth',2)        %画被积函数曲线
hold on                                %保持属性
plot(x,F,'LineWidth',2)                %画积分曲线族
title('不定积分的分部积分法','FontSize',16)  %加标题
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
legend(char('被积函数',[repmat('\itC\rm=',length(c),1),num2str(c')]),0)%加图例
axis([-x0,xm,-0.3,0.3])

xm=2*pi;                               %最大横坐标
x0=1;                                  %初始横坐标
y0=0;                                 %初始纵坐标
c=y0-subs(s,'x',x0)                    %求积分常数
x=linspace(x0,xm);                     %横坐标向量
dx=x(2)-x(1);                          %横坐标间隔
y=f(x);                                %纵坐标向量
figure                                 %创建图形窗口
fill([x,xm,x0],[y,0,0],'y')            %画填色图
hold on                                %保持属性
ezplot(s+c)                            %画符号积分曲线
Y=y0+cumtrapz(y)*dx;                   %用累积梯形法求积分
plot(x,Y,'-.c','LineWidth',2)          %画数值解曲线
title(['不定积分的特解(\itC\rm=',num2str(c),')'],'FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
legend('被积函数包围面','符号积分','梯形法求和',0)%加图例
plot(x0,y0,'or')                       %画初始点
text(x0,y0,[num2str(x0),',',num2str(y0)],'FontSize',16)%显示初始坐标

%程序结束.周群益设计
