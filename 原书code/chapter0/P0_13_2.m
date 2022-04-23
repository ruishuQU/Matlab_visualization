%方格中的贾宪三角
clear                                  %清除变量
nm=input('请输入行数:');               %键盘输入行数
%nm=9;                                  %行数参考值
%nm=16;                                 %行数参考值
P=pascal(nm+1);                        %帕斯卡矩阵
x0=[1,-1,-1,1,1];                      %方格横坐标
y0=[1,1,-1,-1,1];                      %方格纵坐标
figure                                 %创建图形窗口
hold on                                %保持属性
title('贾宪三角','FontSize',16)        %加标题
for n=0:nm                             %按层循环
    c=1;                               %第一个数
    for m=0:n                          %按列循环
        plot(x0+2*m-n,y0-2*n)          %画方格
        c=P(n+1-m,m+1);                %从帕斯卡矩阵中取数值
%        c=factorial(n)/factorial(m)/factorial(n-m);%根据阶乘计算数值
        text(2*m-n,-2*n,num2str(c),'HorizontalAlignment','center')%显示文本
%        c=c*(n-m)/(m+1);               %根据递推公式计算下一个数值
    end                                %结束内循环
end                                    %结束外循环
axis tight off                         %贴框隐轴

%程序结束.周群益设计
