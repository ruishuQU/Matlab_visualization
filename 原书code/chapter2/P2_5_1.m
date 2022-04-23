%递推数列的极限
clear                                  %清除变量
a0=input('请输入第一项:');             %键盘输入第一项
%a0=1;                                  %第一个参考值
%a0=2;                                  %第一个参考值
an=a0;                                 %保存第一个值
nm=10;                                 %最大整数
for n=1:nm                             %循环
    a0=1+a0./(1+a0);                   %计算下一个值
    an=[an;a0];                        %连接此值
end                                    %结束循环
n=0:nm;                                %整数向量
figure                                 %创建图形窗口
plot(n,an,'*-','LineWidth',2)          %画线
xlabel('\itn','FontSize',16)           %加横坐标
ylabel('\ita_n','FontSize',16)         %加纵坐标
title('递推数列的极限','FontSize',16)  %加标题
grid on                                %加网格
l=(1+sqrt(5))/2;                       %极限
hold on                                %保持属性
plot([0,nm],[l,l],'--','LineWidth',2)  %画极限线
text(nm,l,num2str(l),'FontSize',16)    %显示极限文本

%程序结束.周群益设计
