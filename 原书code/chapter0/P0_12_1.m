%程序的循环结构和菲波那契数列
clear                                  %清除变量
nm=input('请输入最大整数:');           %键盘输入最大整数
%nm=10;                                 %最大整数参考值
%nm=30;                                  %最大整数参考值
x1=1;                                  %第1个值
x2=1;                                  %第2个值
xn=[x1,x2];                            %连接两个值
for n=3:2:nm                           %按奇数循环
    x1=x1+x2;                          %计算下一个值
    x2=x2+x1;                          %再计算下一个值
    xn=[xn,x1,x2];                     %连接两值
end                                    %结束循环
figure                                 %创建图形窗口
if nm<=10                              %如果最大整数小于等于10
    plot(xn,'*-','LineWidth',2)        %画通常曲线
else                                   %否则
    semilogy(xn,'*-','LineWidth',2)    %画纵坐标对数曲线
end                                    %结束条件
xlabel('\itn','FontSize',16)           %加横坐标
ylabel('\itx_n','FontSize',16)         %加纵坐标
title('菲波那契数列','FontSize',16)    %加标题
grid on                                %加网格
n=1:length(xn);                        %整数向量
text(n,xn,num2str(xn'),'FontSize',16)  %显示数列文本

%程序结束.周群益设计
