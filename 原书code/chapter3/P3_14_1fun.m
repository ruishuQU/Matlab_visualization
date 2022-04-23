%函数的麦克劳林展开式的函数文件
function fun(y,yn,a,b,ym1,ym2,tit)
f=inline(y);                           %符号函数化为内线函数
fn=inline(yn);                         %通项的符号函数化为内线函数
x=linspace(a,b);                       %自变量向量
y=f(x);                                %函数
n=1:7;                                 %整数向量
[X,N]=meshgrid(x,n);                   %自变量和项数矩阵
Yn=fn(N,X);                            %求各项之值
Y=cumsum(Yn);                          %累积函数值
figure                                 %创建图形窗口
plot(x,y,x,Y,'--','LineWidth',2)       %画函数曲线
fs=16;                                 %字体大小
title([tit,'函数的麦克劳林展开'],'FontSize',fs)%加标题
xlabel('\itx','FontSize',fs)           %加x标签
ylabel('\ity','FontSize',fs)           %加y标签
grid on                                %加网格
axis([a,b,ym1,ym2])                    %曲线范围
legend(char('函数',[repmat('\itn\rm=',length(n),1),num2str(n')]),0)%加图例

%程序结束.周群益设计
