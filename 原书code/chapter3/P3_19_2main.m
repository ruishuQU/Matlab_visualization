%椭圆的曲率半径和渐屈线的主程序
clear                                  %清除变量
syms t b                               %定义符号变量
x=cos(t);                              %符号横坐标
y=b*sin(t);                            %符号纵坐标
x_t=diff(x)                            %x对t的符号导数dx/dt
y_t=diff(y)                            %y对t的符号导数dy/dt
x_tt=diff(x,2)                         %x对t的符号导数d2x/dt2
y_tt=diff(y,2)                         %y对t的符号导数d2y/dt2

rho=(x_t^2+y_t^2)^(3/2)/abs(x_t*y_tt-y_t*x_tt)%曲率半径
%simplify(rho)
fr=inline(rho);                        %曲率半径的内线函数
t=linspace(-pi,pi);                    %参变量向量
b=0.5:0.5:2;                           %纵半轴向量
[B,T]=meshgrid(b,t);                   %参变量和纵半轴矩阵
R=fr(B,T);                             %曲率半径的值
figure                                 %创建图形窗口
plot(t,R,'LineWidth',2)                %画曲线族
legend([repmat('\itb/a\rm=',length(b),1),num2str(b')],0)%图例
title('椭圆随参变量变化的曲率半径','FontSize',16)%加标题
grid on                                %加网格
xlabel('\itt','FontSize',16)           %加横坐标
ylabel('\it\rho/a','FontSize',16)      %加纵坐标

fx=inline(x);                          %x的内线函数
x=fx(t);                               %x的值
x(t<0)=NaN;                            %参变量小于0的横坐标改为非数
figure                                 %创建图形窗口
plot(x,R,'LineWidth',2)                %画曲线族
legend([repmat('\itb/a\rm=',length(b),1),num2str(b')],0)%图例
title('椭圆随坐标变化的曲率半径','FontSize',16)%加标题
grid on                                %加网格
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\itR/a','FontSize',16)         %加纵坐标

e=0.5;                                 %偏心率
P3_19_2fun(e)                          %调用函数文件演示动画
P3_19_2fun(0.4)                        %调用函数文件演示动画
P3_19_2fun(0.8)                        %调用函数文件演示动画

%程序结束.周群益设计
