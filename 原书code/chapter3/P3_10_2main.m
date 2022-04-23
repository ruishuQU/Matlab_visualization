%指数函数与三角函数乘积的高阶导数的主程序
clear                                  %清除变量
syms x a n p                           %定义符号变量
%y=exp(a*x)*sin(x);                     %符号函数
dny=(a^2+1)^(n/2)*exp(a*x)*sin(x+n*p); %符号导数
dfn=inline(dny)                        %符号导数转化为内线函数
xm=2*pi;                               %最大横坐标
x=linspace(-xm,xm);                    %横坐标向量
a=-0.2:0.1:0.2;                        %参数向量
[A,X]=meshgrid(a,x);                   %参数和自变量矩阵
P=atan2(1,A);                          %参数角
nm=5;                                  %最大整数
for n=0:nm-1                           %循环
    dYn=dfn(A,n,P,X);                  %导数矩阵
    figure                             %创建图形窗口
    plot(x,dYn,'x-','LineWidth',2)     %画解析解曲线族
    title(['指数函数与正弦函数乘积的',num2str(n),'阶导数'],'FontSize',16)%加标题
    xlabel('\itbx','FontSize',16)      %加横坐标
    grid on                            %加网格
    axis tight                         %贴轴
    legend([repmat('\ita/b\rm=',length(a),1),num2str(a')],0)%加图例
%用符号导数验证解析解的正确性
%     dny=diff(y,n)                      %求符号导数
%     dny=simplify(dny)                  %化简
%     hold on                            %保持属性
%     plot(x,subs(dny,{'a','x'},{A,X}),'o')%画曲线
%     text(-xm,0,'叉号是解析解,圈是符号解.','FontSize',16)%加说明
end                                    %结束循环
a=0.2;                                 %参数
syms x                                 %定义符号变量
y=exp(a*x)*sin(x);                     %符号函数
P3_10_2fun(y,a,'正弦')                 %调用函数文件
P3_10_2fun(exp(-a*x)*cos(x),-a,'余弦') %调用函数文件

%程序结束.周群益设计
