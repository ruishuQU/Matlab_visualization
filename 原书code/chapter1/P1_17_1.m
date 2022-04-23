%求二次函数
clear                                  %清除变量
syms x a b c                           %定义符号变量
y=a*x^2+b*x+c;                         %二次符号函数
x1=-2;                                 %第1点的横坐标
y1=0;                                  %第1点的纵坐标
x2=0;                                  %第2横点的横坐标
y2=1;                                  %第2点的纵坐标
x3=1;                                  %第3横点的横坐标
y3=5;                                  %第3点的纵坐标
s1=subs(y,x,x1)-y1                     %第1个代数方程
s2=subs(y,x,x2)-y2                     %第2个代数方程
s3=subs(y,x,x3)-y3                     %第3个代数方程
[a,b,c]=solve(s1,s2,s3)                %求代数方程组的解
f=subs(y,{'a','b','c'},{a,b,c})        %求二次方程的具体形式
x=-3:0.1:3;                            %自变量向量
y=subs(f,'x',x);                       %形成函数
figure                                 %创建图形窗口
plot(x,y,'LineWidth',2)                %画线
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
title('二次函数','FontSize',16)        %加标题
grid on                                %加网格
hold on                                %保持属性
plot([x1,x2,x3],[y1,y2,y3],'o')        %画圈
text([x1,x2,x3],[y1,y2,y3],[num2str([x1;x2;x3]),[',';',';','],...
    num2str([y1;y2;y3])],'FontSize',16)%标记函数值
text(-1,10,'\ity\rm=\itax\rm^2+\itbx\rm+\itc','FontSize',16)%标记公式
text(-1,8,['\ita\rm=',num2str(double(a)),',\itb\rm=',num2str(double(b)),...
    ',\itc\rm=',num2str(double(c))],'FontSize',16)%标记系数

%程序结束.周群益设计
