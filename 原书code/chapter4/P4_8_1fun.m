%不定积分验证的函数文件
function fun(yn,n,b,sn,tit)
s=int(yn)                              %不定符号积分
fy=inline(yn);                         %被积符号函数的内线函数
fs=inline(s);                          %不定符号积分的内线函数
fsn=inline(sn);                        %手工积分函数的内线函数

xm=3;                                  %最大横坐标
dx=0.1;                                %自变量间隔
x=1:dx:xm;                             %自变量向量
yn=fy(x);                              %被积函数值
sn=fsn(x);                             %手工不定积分函数值
sn=sn-sn(1);                           %使初值为0
s=fs(x);                               %符号不定积分函数值
s=s-s(1);                              %使初值为0
figure                                 %创建图形窗口
plot(x,yn,x,sn,'x--',x,s,'o','LineWidth',2)%画原函数和积分曲线
title([tit,'不定积分的验证(\itn\rm=',num2str(n),...
    ',\itb\rm=',num2str(b),')'],'FontSize',16)%加标题
%    ',\itac\rm=',num2str(b),')'],'FontSize',16)%加标题
xlabel('\itax','FontSize',16)          %加横坐标
grid on                                %加网格
ss=cumtrapz(yn)*dx;                    %梯形法累积求和
hold on                                %保持属性
plot(x,ss,'sg','LineWidth',2)          %画梯形法积分曲线
legend('被积函数','手工解','符号解','梯形法解',0)%加图例

%程序结束.周群益设计
