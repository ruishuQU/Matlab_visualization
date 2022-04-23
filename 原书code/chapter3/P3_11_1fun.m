%幂函数与反比正弦函数乘积和导数的连续性的函数文件
function fun(n,xm,ym,dym)
syms x                                 %定义符号变量
y=x^n*sin(1/x);                        %符号表达式
dy_dx=diff(y)                          %求符号导数
simplify(dy_dx)                        %化简
l=limit(y,x,0)                         %函数的符号极限
l=double(l)                            %化为数值极限
f=inline(y);                           %符号函数转化为内线函数
df=inline(dy_dx);                      %符号导数转化为内线函数
dx=0.005;                              %数值间隔
x=-xm:dx:xm;                           %自变量向量
y=f(x);                                %取函数值
y(imag(y)~=0)=nan;                     %复数改为非数
dy=df(x);                              %取导数值
dy(imag(dy)~=0)=nan;                   %复数改为非数
figure                                 %创建图形窗口
subplot(2,1,1)                         %取子图
plot(x,y,'LineWidth',2)                %画曲线
title(['幂函数与反比正弦函数乘积的连续性(\itn\rm=',num2str(n),')'],...
    'FontSize',16)                     %加标题
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
axis([-xm,xm,-ym,ym])                  %设置曲线范围
hold on                                %保持属性
plot(0,l,'o')                          %画极限点
text(0,l,num2str(l),'FontSize',16)     %标记极限值
subplot(2,1,2)                         %取子图
plot(x,dy,'--','LineWidth',2)          %画曲线
title(['幂函数与反比正弦函数乘积的导数的连续性(\itn\rm=',num2str(n),')'],...
    'FontSize',16)                     %加标题
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
axis([-xm,xm,-dym,dym])                %设置曲线范围
if n>2                                 %当n>2时
    dl=limit(dy_dx,'x',0)              %导数符号极限
    dl=double(dl)                      %化为数值极限
    hold on                            %保持属性
    plot(0,dl,'s')                     %画导数的极限点
    text(0,dl,num2str(dl),'FontSize',16)%标记极限值
end                                    %结束条件

%程序结束.周群益设计
