%含参数的指数函数的极限
clear                                  %清除变量
syms x a                               %定义符号变量
fc={(a^x-x^a)/(x-a),(x^x-a^a)/(x-a)};  %函数元胞
tc={'指数和幂函数','幂指函数'};        %标题元胞
aa=0.1:0.3:1.9;                        %参数向量
xm=2;                                  %最大横坐标
xx=0.05:0.001:xm;                       %自变量向量
[A,X]=meshgrid(aa,xx);                 %参数和自变量矩阵 
a0=0.05:0.01:2;                        %更密的参数向量
for i=1:2                              %循环
    f=fc{i};                           %取函数
    t=tc{i};                           %取标题(部分)
    l=limit(f,x,a)                     %求符号极限
    l=simplify(l)                      %化简
    f=inline(f);                       %转化为内线函数
    F=f(A,X);                          %函数矩阵
    figure                             %创建图形窗口
    plot(xx,F,'LineWidth',2)           %画曲线族
    title(['含参数的函数的极限(',t,')'],'FontSize',16)%加标题
    xlabel('\itx','FontSize',16)       %加横坐标
    ylabel('\itf','FontSize',16)       %加纵坐标
    grid on                            %加网格
    legend([repmat('\ita\rm=',length(aa),1),num2str(aa')],0)%加图例
    ll=subs(l,a,aa);                   %求极限值
    hold on                            %保持属性
    plot(aa,ll,'o')                    %画极限点
    ll=subs(l,a,a0);                   %求极限值
    plot(a0,ll,'-.','LineWidth',2)     %画极限分布线
end                                    %结束循环

%程序结束.周群益设计
