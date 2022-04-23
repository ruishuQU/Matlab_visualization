%含参数的递推数列的极限
clear                                  %清除变量
a=0.5:0.5:3;                           %参数向量
an=ones(size(a));                      %初值向量
An=an;                                 %保存初值
nm=10;                                 %最大整数
for n=2:nm                             %按整数循环
    an=(an+a./an)/2;                   %计算下一个向量
    An=[An;an];                        %连接向量成矩阵
end                                    %结束循环
figure                                 %创建图形窗口
plot(An,'LineWidth',2)                 %画线
xlabel('\itn','FontSize',16)           %加横坐标
ylabel('\ita_n','FontSize',16)         %加纵坐标
title('含参数的递推数列的极限','FontSize',16)%加标题
grid on                                %加网格
legend([repmat('\ita\rm=',length(a),1),num2str(a')])%加图例
l=sqrt(a);                             %极限
hold on                                %保持属性
plot(nm,l,'o')                         %画极限
text(nm*ones(size(a)),l,num2str(l'),'FontSize',16)%标记极限文本

an=[0.5,1.5];                          %初值向量
An=an;                                 %保存初值向量
for n=2:nm                             %循环
    an=(an+1./an)/2;                   %计算下一个向量
    An=[An;an];                        %连接向量成矩阵
end                                    %结束循环
n=1:nm;                                %整数向量
figure                                 %创建图形窗口
plot(n,An(:,1),'*-',n,An(:,2),'o--','LineWidth',2)%画线
xlabel('\itn','FontSize',16)           %加横坐标
ylabel('\ita_n/a\rm^{1/2}','FontSize',16)%加纵坐标
title('约化的递推数列的极限','FontSize',16)%加标题
grid on                                %加网格
legend([repmat('\ita\rm_1/\ita\rm^{1/2}=',2,1),num2str(An(1,:)')])%图例

%程序结束.周群益设计
