%自变量与正弦复合函数乘积的定积分的函数文件
function fun(n)
syms x                                 %定义符号变量
yn=sin(x)^n/(2-sin(x)^2);              %正弦复合函数
%yn=sin(x)^n/(1+cos(x)^2);             %正弦复合函数
y1=x*yn                                %第1个函数的符号表达式
y2=pi/2*yn                             %第2个函数的符号表达式
xm1=0;                                 %积分下限
xm2=pi;                                %积分上限
i1=int(y1,xm1,xm2)                     %第1个函数的符号积分
i1=double(i1)                          %化为数值
i2=int(y2,xm1,xm2)                     %第2个函数的符号积分
i2=double(i2)                          %化为数值

f1=inline(y1)                          %第1个内线函数
f2=inline(y2)                          %第2个内线函数
x=linspace(xm1,xm2);                   %横坐标向量
figure                                 %创建图形窗口
fill([x,xm2,xm1],[f1(x),0,0],'y')      %画填色图
title(['自变量与正弦复合函数乘积的定积分(\itn\rm=',num2str(n),')'],...
    'FontSize',16)                     %加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity_n','FontSize',16)         %加纵坐标
grid on                                %加网格
hold on                                %保持属性
fill([x,xm2,xm1],[f2(x),0,0],'c')      %画填色图
legend('化简前的定积分','化简后的定积分')%加图例
text(0,1,['\itI_n\rm=',num2str(i2)],'FontSize',16)%显示结果
alpha(0.5)                             %平面半透明
 
%程序结束.周群益设计
