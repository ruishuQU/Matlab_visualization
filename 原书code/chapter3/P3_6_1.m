%曲线族
clear                                  %清除变量
a=-1.5:0.5:1.5;                        %常数向量
xm=3;                                  %最大横坐标
x=-xm:0.01:xm;                         %横坐标向量
[A,X]=meshgrid(a,x);                   %常数和横坐标矩阵
D=A.*(1-X.^2);                         %根的判别式
D(D<0)=nan;                            %小于零则改为非数
Y=X+sqrt(D);                           %纵坐标矩阵
figure                                 %创建图形窗口
plot(x,Y,'LineWidth',2)                %画曲线族
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
title('不同参数的曲线族','FontSize',16)%加标题
grid on                                %加网格
legend([repmat('\ita\rm=',length(a),1),num2str(a')],4)%图例
Y=X-sqrt(D);                           %纵坐标矩阵
hold on                                %保持属性
plot(x,Y,'LineWidth',2)                %画曲线族
xM=1./sqrt(1+a);                       %极值横坐标
xM(imag(xM)~=0)=nan;                   %复数改为非数
stem(xM,1./xM,'--')                    %画极值杆线
stem(-xM,-1./xM,'--')                  %画极值杆线
% D=sqrt(-A);                            %根的判别式
% D(imag(D)~=0)=NaN;                     %复数改为非数
% plot(X,(1+D).*X,'-.','LineWidth',2)    %画渐近线
% plot(X,(1-D).*X,'-.','LineWidth',2)    %画渐近线
a=-0.9:0.1:8;                          %较密的常数向量
xM=1./sqrt(1+a);                       %极值横坐标
plot(xM,1./xM,'--','LineWidth',2)      %画极值线
plot(-xM,-1./xM,'--','LineWidth',2)    %画极值线
axis equal                             %使坐标间隔相等
axis([-xm,xm,-xm,xm])                  %曲线范围

%程序结束.周群益设计
