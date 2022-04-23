%参变量方程的面积和长度的函数文件
function fun(x,y,t1,t2,tit)
ds=(x*diff(y)-y*diff(x))/2;            %符号被积函数
%ds=y*diff(x);                          %符号被积函数
%ds=x*diff(y);                          %符号被积函数
s=abs(int(ds,t1,t2))                   %求符号积分
s=double(s);                           %化为数值
dl=sqrt(diff(x)^2+diff(y)^2);          %符号被积函数
dl=simplify(dl)                        %化简
fl=inline(dl);                         %弧长的内线函数
l=quad(fl,t1,t2)                       %数值积分求弧长
% l=int(dl,t1,t2)                        %求符号积分
% l=double(l)                            %化为数值
fx=inline(x);                          %横坐标的内线函数
fy=inline(y);                          %纵坐标的内线函数
t=linspace(t1,t2);                     %参数向量
x=fx(t);                               %横坐标
y=fy(t);                               %纵坐标
figure                                 %创建图形窗口
if x(1)==x(end)&y(1)==y(end)           %如果是闭合曲线
    fill(x,y,'y')                      %画填色图
else                                   %否则
    fill([x,x(end),x(1)],[y,0,0],'y')  %画填色图
end                                    %结束条件
title([tit,'的面积和长度'],'FontSize',16)%加标题
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\ity/a','FontSize',16)         %加纵坐标
grid on                                %加网格
axis equal                             %使坐标间隔相等
text(0,0,['\itS/a\rm^2=',num2str(s),...
    ',\itL/a\rm=',num2str(l)],'FontSize',16)%显示面积和长度

%程序结束.周群益设计
