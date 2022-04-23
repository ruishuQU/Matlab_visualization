%不定积分验证的函数文件
function fun(y,tit)
f=inline(y);                           %被积符号函数的内线函数
syms t positive                        %定义符号变量
x=cosh(t);                             %变量替换函数
dx=diff(x);                            %求微分
y=subs(y,'x',x)*dx                     %变量替换
y=simplify(y)                          %化简
s=int(y,t)                             %对t的不定符号积分
s=subs(s,t,acosh(sym('x')))            %替换反函数
fs=inline(s);                          %不定符号积分的内线函数
xm=2;                                  %最大横坐标
dx=0.05;                               %自变量间隔
x=1+dx:dx:xm;                          %自变量向量
y=f(x);                                %被积函数值
s=subs(s,'x',x);                       %替换数值形成不定积分函数值
%s=double(subs(s,'x',x));               %不定积分函数值(同上)
%----------------------------------------------------------
s=s-s(1);                              %使初值为0
ss=cumtrapz(y)*dx;                     %梯形法累积求和
figure                                 %创建图形窗口
plot(x,y,x,s,'x--',x,ss,'or','LineWidth',2)%画原函数和积分曲线
title([tit,'不定积分的验证'],'FontSize',16)%加标题
xlabel('\itx/a','FontSize',16)         %加横坐标
grid on                                %加网格
legend('被积函数','符号解','梯形法解',0)%加图例

%程序结束.周群益设计
