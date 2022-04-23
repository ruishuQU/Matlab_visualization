%e的多位精确数字
clear                                  %清除变量
m=input('请输入精确位数:');            %键盘输入精确位数
%m=80;                                  %精确位数参考值
%m=100;                                 %精确位数参考值
n=1;                                   %项数的初值
s=0;                                   %lg1之值
while s<m                              %指数小于位数时循环
    n=n+1;                             %项数加1
    s=s+log10(n);                      %累加常用对数
end                                    %结束循环
a=ones(n,1);                           %全1向量作为分子
s='e=2.';                              %整数和小数点
for i=1:m                              %按位数循环
    p=0;                               %假定向最后一位的进位数为0
    for j=n:-1:2                       %从最后一项向左边项循环
        b=10*a(j)+p;                   %放大10倍加进位数
        p=floor(b/j);                  %求下一个进位数
        a(j)=mod(b,j);                 %求余数作为分子
    end                                %结束循环
    em(i)=p;                           %保留e的该位之值
    s=[s,num2str(p)];                  %连接数字
end                                    %结束循环
s                                      %在命令窗口显示结果
figure                                 %创建图形窗口
plot(em,'.-')                          %画线
xlabel('\itm','FontSize',16)           %加横坐标
ylabel('\ita_m','FontSize',16)         %加纵坐标
title('e小数点后面的数字','FontSize',16)%加标题
grid minor                             %加精细网格
text(1,0.5,s)                          %显示结果
text(1:m,em,num2str(em'))              %显示数字
%text(1:n,en,num2str((1:n)'))           %显示位数

%程序结束.周群益设计
