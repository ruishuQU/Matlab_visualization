%指数函数与三角函数乘积的高阶导数的函数文件
function fun(y,a,tit)
p=atan2(1,a);                          %参数角
xm=6;                                  %最大横坐标
dx=0.1;                                %数值间隔
x=-xm:dx:xm;                           %自变量向量
dY=[];                                 %矩阵置空
nm=5;                                  %最大整数
for n=0:nm-1                           %循环
    dy=diff(y,n)                       %求符号导数
    dY=[dY;subs(dy,'x',x)];            %连接矩阵
end                                    %结束循环
n=0:nm-1;                              %整数向量
figure                                 %创建图形窗口
plot(x,dY,'LineWidth',2)               %画解析解曲线族
legend([repmat('\itn\rm=',nm,1),num2str(n')],0)%加图例
title(['指数函数与函数',tit,'函数乘积的高阶导数'],'FontSize',16)%加标题
xlabel('\itbx','FontSize',16)          %加横坐标
grid on                                %加网格
text(0,min(dY(:)),['\ita/b\rm=',num2str(a)],'FontSize',16)%加参数说明

%程序结束.周群益设计
