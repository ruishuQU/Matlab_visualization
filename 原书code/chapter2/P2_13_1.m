%含参数的比三角函数的极限
clear                                  %清除变量
syms x a                               %定义符号变量
fc={(sin(x)-sin(a))/(x-a),(cos(x)-cos(a))/(x-a),...
    (tan(x)-tan(a))/(x-a),(cot(x)-cot(a))/(x-a),...
    (sec(x)-sec(a))/(x-a),(csc(x)-csc(a))/(x-a)};%函数元胞
tc={'正弦sin','余弦cos','正切tan','余切cot','正割sec','余割csc'};%标题元胞
a1=-3:3;                               %参数向量
xm=6;                                  %最大横坐标
xx=-xm:0.05:xm;                        %自变量向量
[A,X]=meshgrid(a1,xx);                 %参数和自变量矩阵 
a2=-4:0.1:4;                           %更密的参数向量
for i=1:6                              %循环
    f=fc{i};                           %取函数
    t=tc{i};                           %取标题(部分)
    l=limit(f,x,a)                     %求符号极限
    f=inline(f);                       %转化为内线函数
    F=f(A,X);                          %函数矩阵
    figure                             %创建图形窗口
    plot(xx,F,'LineWidth',2)           %画曲线族
    xlabel('\itx','FontSize',16)       %加横坐标
    ylabel('\itf','FontSize',16)       %加纵坐标
    title(['含参数的比三角函数的极限(',t,')'],'FontSize',16)%加标题
    grid on                            %加网格
    legend([repmat('\ita\rm=',length(a1),1),num2str(a1')])%加图例
    ll=subs(l,a,a1);                   %求极限值
    hold on                            %保持属性
    plot(a1,ll,'o')                    %画极限点
%    stem(a1,ll,'--')                   %画杆线
    ll=subs(l,a,a2);                   %求极限值
    plot(a2,ll,'-.','LineWidth',2)     %画极限分布线
    if i>2,axis([-xm,xm,-6,6]),end     %设置曲线范围
end                                    %结束循环

%程序结束.周群益设计
