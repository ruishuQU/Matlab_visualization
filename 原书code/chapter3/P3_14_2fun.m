%函数的泰勒展开式的函数文件
function fun(y,xx0,aa,bb,ym1,ym2,tit)
f=inline(y);                           %符号函数化为内线函数
x0=xx0*pi/180;                         %展开点的度数化为弧度数
a=aa*pi/180;                           %横坐标下限的度数化为弧度数
b=bb*pi/180;                           %横坐标上限的度数化为弧度数
x=linspace(a,b);                       %横坐标向量
xx=x*180/pi;                           %横坐标向量化为度数
figure                                 %创建图形窗口
plot(xx,f(x),'LineWidth',2)            %画函数曲线
xlabel('\itx\rm/\circ','FontSize',16)  %标记横坐标
ylabel('\ity','FontSize',16)           %标记纵坐标
title([tit,'函数的各级泰勒展开式'],'FontSize',16)%标记标题
axis([aa,bb,ym1,ym2])                  %曲线范围
grid on                                %加网格
hold on                                %保持图像
n=1;                                   %最高级数
while 1                                %无限循环
%    t=taylor(y,'x',x0,n)               %符号泰勒展开式(旧版的用法)
    t=taylor(y,'x',x0,'Order',n)       %符号泰勒展开式
    yn=subs(t,'x',x);                  %数值泰勒展开式
    plot(xx,yn,'--','LineWidth',2,'Color',rand(3,1))%画函数曲线
    yn=input('还要吗(y/n)?','s');      %键盘选择
    if lower(yn)=='n',break,end        %如果不要了就退出循环
    n=n+1;                             %下一项
end                                    %结束循环
leg=[repmat('\itn\rm=',n,1) num2str((1:n)')];%图例字符串
legend(char('函数',leg),0)             %加图例
plot(xx0,f(x0),'*')                    %画点
text(xx0,f(x0),[num2str(xx0),',',num2str(f(x0))],'FontSize',16)%标记展开点

%程序结束.周群益设计
