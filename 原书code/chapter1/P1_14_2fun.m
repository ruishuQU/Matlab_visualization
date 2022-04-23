%线性分式函数和反函数的函数文件
function fun(a,b,c,d)
if a+d~=0,return,end                   %如果反函数不同形则返回
xm=8;                                  %最大横坐标
x=-xm:0.1:xm;                          %自变量向量
y=(a*x+b)./(c*x+d);                    %函数值
%y=a/c+(a^2+b*c)/c./(c*x-a);            %函数值
figure                                 %创建图形窗口
plot(x,y,y,x,'.','LineWidth',2)        %画函数和反函数曲线
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
title('线性分式函数和反函数','FontSize',16)%加标题
grid on                                %加网格
axis equal                             %使坐标间隔相等
axis([-xm-2,xm+2,-xm,xm])              %设置曲线范围
legend('函数','反函数',2)              %图例
hold on                                %保持属性
plot(x,x,'-.','LineWidth',2)           %画对称轴
r0=a/c;                                %渐近线坐标
plot([-xm,xm],[r0,r0],':',[r0,r0],[-xm,xm],':','LineWidth',2)%画渐近线
text(-xm,0,['\ita\rm=-\itd\rm=',num2str(a),...
    ',\itb\rm=',num2str(b),',\itc\rm=',num2str(c)],'FontSize',16)%标记参数

%程序结束.周群益设计
