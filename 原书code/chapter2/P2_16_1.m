%对数函数在原点的极限
clear                                  %清除变量
syms x                                 %定义符号变量
fc={log(1+x)/x,log(1+x*exp(x))/log(x+sqrt(1+x^2))};%符号函数元胞
xx=-1:0.01:1;                          %自变量向量
for i=1:length(fc)                     %按元胞循环
    f=fc{i};                           %取符号函数
    l=limit(f,x,0)                     %符号极限
    l=double(l)                        %化为数值
    f=inline(f);                       %转化为内线函数
    figure                             %创建图形窗口
    plot(xx,f(xx),'LineWidth',2)       %画曲线
    title('比对数函数在原点的极限','FontSize',16)%加标题
    xlabel('\itx','FontSize',16)       %加横坐标
    ylabel('\itf','FontSize',16)       %加纵坐标
    grid on                            %加网格
    hold on                            %保持属性
    plot(0,l,'o')                      %画极限
    text(0,l,num2str(l),'FontSize',16) %标记极限
end                                    %结束循环

%程序结束.周群益设计
