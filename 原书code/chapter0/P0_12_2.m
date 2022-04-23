%程序的不定循环结构
clear                                  %清除变量
l=(sqrt(5)-1)/2;                       %极限
e=input('请输入精度:');                %键盘输入精度
%e=1e-4;                                %精度参考值
%e=1e-6;                                %精度参考值
%e=1e-10;                               %精度参考值
x1=1;                                  %第1个值
x2=1;                                  %第2个值
yn=[];                                 %变量置空
while 1                                %无限循环
    y2=x1/x2;                          %求相邻两个数的比值
    yn=[yn,y2];                        %连接此值
    if abs(y2-l)<e break,end           %达到精确则退出循环
    if length(yn)>1000 break,end       %数值太多则退出循环(调试程序用)
    x3=x1+x2;                          %计算下一个值
    x1=x2;                             %转移数值
    x2=x3;                             %再转移数值
end                                    %结束循环
n=2:length(yn)+1;                      %整数向量
figure                                 %创建图形窗口
plot(n,yn,'*-','LineWidth',2)          %画比值线
title(['菲波那契数列比值的极限(\it\epsilon\rm=',num2str(e),')'],...
    'FontSize',16)                     %加标题
xlabel('\itn','FontSize',16)           %加横坐标
ylabel('\itx_n\rm_-_1/\itx_n','FontSize',16)%加纵坐标
grid on                                %加网格
hold on                                %保持属性
plot([2,n(end)],[l,l],'--','LineWidth',2)%画极限线
text(n(end),l,num2str(l),'FontSize',12)%显示极限文本

%程序结束.周群益设计
