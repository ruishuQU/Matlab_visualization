%函数项数列的极限分段函数的函数文件
function fun(fn,xm)
fn=inline(fn);                         %化为内线函数
x=0:0.01:xm;                           %自变量向量
nm=6;                                  %最大项
n=0:nm-1;                              %整数向量
[X,N]=meshgrid(x,2.^n);                %自变量和整数幂向量化为矩阵
figure                                 %创建图形窗口
plot(x,fn(N,X),'LineWidth',2)          %画曲线族
title('函数项数列和极限分段函数','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itf_n','FontSize',16)         %加纵坐标
grid on                                %加网格
legend([repmat('\itn\rm=',length(n),1),num2str(2.^n')],0)%图例
hold on                                %保持属性

%程序结束.周群益设计
