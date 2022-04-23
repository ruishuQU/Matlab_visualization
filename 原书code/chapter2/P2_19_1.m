%函数项递推数列和极限函数
clear                                  %清除变量
x=0:0.1:1;                             %自变量向量
fn=x/2;                                %第一个函数向量
n=6;                                   %最大整数
figure                                 %创建图形窗口
hold on                                %保持属性
c='v+oxs*';                            %符号字符串
for i=1:n                              %按整数循环
    plot(x,fn,[c(i),'-'])              %画线
    fn=x/2-fn.^2/2;                    %计算下一个向量
end                                    %结束循环
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itf_n','FontSize',16)         %加纵坐标
title('函数项递推数列和极限函数','FontSize',16)%加标题
grid on                                %加网格
fn=sqrt(1+x)-1;                        %极限函数
plot(x,fn,'k--','LineWidth',2)         %画极限线
legend(char([repmat('\itn\rm=',n,1),num2str((1:n)')],'极限曲线'),2)%图例

%程序结束.周群益设计
