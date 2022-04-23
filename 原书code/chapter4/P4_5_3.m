%正弦或余弦函数的对数的瑕积分
clear                                  %清除变量
syms x                                 %定义符号变量
y1=log(sin(x))                         %正弦对数函数的符号表达式
y2=log(cos(x))                         %余弦对数函数的符号表达式
xm1=0;                                 %积分下限
xm2=pi/2;                              %积分上限
s1=int(y1,xm1,xm2)                     %第1个函数的符号积分
s1=double(s1)                          %化为数值
s2=int(y2,xm1,xm2)                     %第2个函数的符号积分
s2=double(s2)                          %化为数值

f1=inline(y1)                          %第1个内线函数
f2=inline(y2)                          %第2个内线函数
x=linspace(xm1,xm2,1e4);               %横坐标向量
x(1)=eps;                              %第一个值0改为小量
figure                                 %创建图形窗口
fill([x,xm2,xm1],[f1(x),0,0],'y')      %画填色图
title('正弦或余弦函数的对数的瑕积分','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
grid on                                %加网格
text(xm1,-1,['\itS_s\rm=',num2str(s1)],'FontSize',16)%显示结果
hold on                                %保持属性
fill([x,xm2,xm1],[f2(x),0,0],'c')      %画填色图
legend('正弦对数函数的瑕积分','余弦对数函数的瑕积分',0)%加图例
text(xm2*3/4,-1,['\itS_c\rm=',num2str(s2)],'FontSize',16)%显示结果
alpha(0.5)                             %平面半透明
axis([xm1,xm2,-5,0])                   %设置曲线范围

%程序结束.周群益设计
