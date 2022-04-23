%刻卜勒方程的近似解的函数文件
function fun(e,n)
x=linspace(-pi,pi);                    %自变量向量
yn=x;                                  %第一个函数向量
Yn=yn;                                 %保存第一个向量
for i=1:n-1                            %按整数循环
    yn=x+e*sin(yn);                    %计算下一个向量
    Yn=[Yn;yn];                        %连接向量成矩阵
end                                    %结束循环
figure                                 %创建图形窗口
plot(x,Yn,'LineWidth',2)               %画线
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity_n','FontSize',16)         %加纵坐标
title('刻卜勒方程的近似解','FontSize',16)%标题
grid on                                %加网格
y=linspace(-pi,pi);                    %极限函数
x=y-e*sin(y);                          %横坐标
hold on                                %保持属性
plot(x,y,'k--','LineWidth',2)          %画极限线
axis tight                             %曲线贴框
legend(char([repmat('\itn\rm=',n,1),num2str((1:n)')],'极限曲线'),4)%图例
text(0,0,['\it\epsilon\rm=',num2str(e)],'FontSize',16)%标记常数

%程序结束.周群益设计
