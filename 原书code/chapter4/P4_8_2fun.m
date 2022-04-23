%x^n/(ax-b)的不定积分的验证的函数文件
function fun(yn,n,b)
yn=subs(yn,{'n','b'},{n,b});           %被积函数替换指数和常数
sn=int(yn)                             %不定符号积分
f=inline(yn);                          %被积符号函数的内线函数
fs=inline(sn);                         %不定符号积分的内线函数
xm=3;                                  %最大横坐标
dx=0.1;                                %自变量间隔
x=1:dx:xm;                             %自变量向量
if n==1                                %如果整数为1
    kn=x+b*log(abs(x-b));              %求解
%    kn=x-b*log(abs(x+b));              %求解
else                                   %否则
    i=1:n;                             %整数向量
    [X,I]=meshgrid(x,i);               %自变量和整数矩阵
     Yn=X.^(n-I+1).*b.^(I-1)./(n-I+1); %通项
     kn=sum(Yn)+b^n*log(abs(x-b));     %求和
%    Yn=(-1).^(I-1).*X.^(n-I+1).*b.^(I-1)./(n-I+1);%通项
%    kn=sum(Yn)+(-1)^n*b^n*log(abs(x+b));%求和
end                                    %结束条件
kn=kn-kn(1);                           %使初值为0
yn=f(x);                               %被积函数值
sn=fs(x);                              %不定积分函数值
sn=sn-sn(1);                           %使初值为0
ss=cumtrapz(yn)*dx;                    %梯形法累积求和
figure                                 %创建图形窗口
plot(x,yn,x,kn,'x--',x,sn,'o',x,ss,'sg','LineWidth',2)%画原函数和积分曲线
title(['\itx^n\rm/(\itax-b\rm)不定积分的验证(\itn\rm=',num2str(n),...
    ',\itb\rm=',num2str(b),')'],'FontSize',16)%加标题
xlabel('\itax','FontSize',16)          %加横坐标
grid on                                %加网格
legend('被积函数','手工解','符号解','梯形法解',0)%加图例

%程序结束.周群益设计
