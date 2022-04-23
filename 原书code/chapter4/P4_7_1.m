%不定积分的换元法和验证
clear                                  %清除变量
syms x v                               %定义符号变量
y=x*exp(x)/sqrt(exp(x)-4)              %被积函数的符号表达式
s=int(y)                               %函数的符号不定积分不能得到精确的解析解
u=2*log(v^2+4)                         %函数的符号表达式
s=int(u)                               %函数对v的符号不定积分
v=sqrt(exp(x)-4)                       %变换公式
s=subs(s,'v',v)                        %变量替换求基本原函数
%----------------------------------------------------------
f=inline(y)                            %内线函数
c=-12:4:12;                            %常数向量
x1=log(4);                             %最小横坐标
x2=2*pi;                               %最大横坐标
x=linspace(x1,x2);                     %横坐标向量
[C,X]=meshgrid(c,x);                   %常数和坐标矩阵
F=subs(s,'x',X)+C;                     %不定积分矩阵
figure                                 %创建图形窗口
ezplot(y)                              %画简易被积函数曲线
%plot(x,f(x),'LineWidth',2)             %画被积函数曲线
hold on                                %保持属性
plot(x,F,'--','LineWidth',2)           %画积分曲线族
title('不定积分的换元法','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
legend(char('被积函数',[repmat('\itC\rm=',length(c),1),num2str(c')]),0)%加图例

x0=2;                                  %初始横坐标
y0=10;                                 %初始纵坐标
c=y0-subs(s,'x',x0)                    %求积分常数
x=linspace(x0,x2);                     %横坐标向量
dx=x(2)-x(1);                          %横坐标间隔
y=f(x);                                %纵坐标向量
figure                                 %创建图形窗口
fill([x,x2,x0],[y,0,0],'y')            %画填色图
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
