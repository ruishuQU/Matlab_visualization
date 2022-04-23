%反双曲函数和导数
clear                                  %清除变量
syms x                                 %定义符号变量
xm=3;                                  %最大自变量
yc={asinh(x),acosh(x),atanh(x),acoth(x)};%反双曲函数符号元胞
tc={'正弦','余弦','正切和余切','余切和正切'};%反双曲函数的主要标题
for i=1:length(yc)                     %按元胞循环
    y=yc{i}                            %取符号函数
    t=tc{i};                           %取主要标题
    dy_dx=diff(y)                      %求y对x的导数
    d2y_dx2=diff(y,2)                  %求y对x的二阶导数
    f=inline(y);                       %函数的内线函数
    df=inline(dy_dx)                   %导数的内线函数
    d2f=inline(d2y_dx2)                %二阶导数的内线函数
    x=-xm:0.05:xm;                     %横坐标向量
    if i==2                            %对于反双曲余弦函数
        x=1:0.05:xm;                   %横坐标向量
    end                                %结束条件
    y=f(x);                            %函数值
    dy=df(x);                          %导数函数值
    d2y=d2f(x);                        %二阶导数函数值
    figure                             %创建图形窗口
    plot(x,y,x,dy,'--o',x,d2y,'-.s','LineWidth',2)%画曲线
    axis([-xm,xm,-2,2])                %设置坐标范围
    if i==2                            %对于反双曲余弦函数
        hold on                        %保持图像
        axis([1,xm,-3,3])              %设置坐标范围
        plot(x,-y,x,-dy,'--+',x,-d2y,'-.x','LineWidth',2)%画曲线
    end                                %结束条件
    xlabel('\itx','FontSize',16)       %加横坐标
    title(['反双曲',t,'函数和导数'],'FontSize',16)%加标题
    grid on                            %加网格
    legend('\ity','\ity\prime','\ity\prime\prime',0)%加图例
end                                    %结束循环

%程序结束.周群益设计
