%可化为单一参数的对数和三角复合函数的极限
clear                                  %清除变量
syms x a b                             %定义符号变量
fc1={log(cos(a*x))/log(cos(b*x)),log(tan(pi/4+a*x))/sin(b*x)};%双参数符号函数元胞
fc2={log(cos(a*x))/log(cos(x)),log(tan(pi/4+a*x))/sin(x)};%单参数符号函数元胞
xm=0.5;                                %最大横坐标
xm=1;                                  %最大横坐标
xx=-xm:0.01:xm;                        %自变量向量
a=0.5:0.5:3;                           %参数向量
[A,X]=meshgrid(a,xx);                  %参数和自变量矩阵
for i=1:length(fc1)                    %按元胞循环
    f=fc1{i}                           %取符号函数
    l=limit(f,x,0)                     %符号极限
    f=fc2{i}                           %取符号函数
    l=limit(f,x,0)                     %符号极限
    f=inline(f);                       %符号函数转化为内线函数
    F=f(A,X);                          %函数矩阵
    F(imag(F)~=0)=nan;                 %复数改为非数
    figure                             %创建图形窗口
    plot(xx,F,'LineWidth',2)           %画曲线族
    title('可化为单一参数的对数和三角复合函数的的极限','FontSize',16)%加标题
    xlabel('\itbx','FontSize',16)      %加横坐标
    ylabel('\itf','FontSize',16)       %加纵坐标
    legend([repmat('\ita/b\rm=',length(a),1),num2str(a')])%加图例
    grid on                            %加网格
    l=subs(l,'a',a);                   %将符号替换为整数向量
    hold on                            %保持图像
    plot(0,l,'or','LineWidth',2)       %画极限点
    text(zeros(size(l)),l,num2str(l'),'FontSize',16)%标记极限值
    axis([-xm,xm,0,10])                %设置曲线范围
end                                    %结束循环

%程序结束.周群益设计
