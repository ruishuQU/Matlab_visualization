%函数项数列的极限函数的函数文件
function fun(fn)
f=limit(fn,'n',inf)                    %符号极限
fn=inline(fn);                         %化为内线函数
xm=2;                                  %最大横坐标
x=-xm:0.01:xm;                         %自变量向量
nm=6;                                  %最大项
n=0:nm-1;                              %整数向量
[X,N]=meshgrid(x,2.^n);                %自变量和2的幂指数向量化为矩阵
f=subs(f,'x',x);                       %极限纵坐标
figure                                 %创建图形窗口
plot(x,fn(N,X),x,f,'--','LineWidth',2) %画曲线族
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\itf_n','FontSize',16)         %加纵坐标
title('函数项数列的极限函数','FontSize',16)%加标题
grid on                                %加网格
legend(char([repmat('\itn\rm=',length(n),1),num2str(2.^n')],...
    '极限函数'),0)                     %加图例

%程序结束.周群益设计
