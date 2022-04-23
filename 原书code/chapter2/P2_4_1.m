%关于e的数列的极限
clear                                  %清除变量
syms n                                 %定义符号变量
an=(1+1/n)^n;                          %第一个符号数列
la=limit(an,n,inf)                     %求符号极限
bn=(1+1/n)^(n+1);                      %第二个符号数列
lb=limit(bn,n,inf)                     %求符号极限
fa=inline(an)                          %第一个符号数列化为内线函数
fb=inline(bn)                          %第二个符号数列化为内线函数
nm=100;                                %最大项
n=1:nm;                                %整数向量
% xn=(1+1./n).^n;                        %数列
% yn=(1+1./n).^(n+1);                    %数列
an=fa(n);                              %求第一个数列的值
bn=fb(n);                              %求第二个数列的值
figure                                 %创建图形窗口
plot(n,an,n,bn,'--','LineWidth',2)     %画线
xlabel('\itn','FontSize',16)           %加横坐标
title('关于e的数列的极限','FontSize',16)%加标题
grid on                                %加网格
legend('\ita_n','\itb_n')              %加图例
e=double(la)                           %求极限值
%e=double(ly)                           %求极限值(同上)
%e=exp(1);                              %取e值(同上)
hold on                                %保持属性
plot([0,nm],[e,e],'*-.','LineWidth',2) %画极限线
text(0,e,num2str(e,16),'FontSize',16)  %显示极限文本

%程序结束.周群益设计
