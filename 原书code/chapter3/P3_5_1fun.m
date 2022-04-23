%多项式的增减性和凹凸性以及极值和拐点的函数文件
function fun(y,xm1,xm2,t)
dy_dx=diff(y)                          %求符号导数
d2y_dx2=diff(y,2)                      %求符号二阶导数
f=inline(y)                            %符号函数直接化为内线函数
df=inline(dy_dx)                       %符号导数直接化为内线函数
d2f=inline(d2y_dx2)                    %符号二阶导数直接化为内线函数
%画函数和导数曲线
x=xm1:0.01:xm2;                        %横坐标向量
figure                                 %创建图形窗口
plot(x,f(x),x,df(x),'--g',x,d2f(x),'-.r','LineWidth',2)%画函数和导数曲线
title([t,'的增减性和凹凸性以及极值和拐点'],'FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
grid on                                %加网格
legend('原函数\ity','导数\ity\prime','二阶导数\ity\prime\prime',0)%加图例
%计算和标记零点
x0=solve(y)                            %求原函数的符号零点
x0=double(x0)                          %化为数值
x0(imag(x0)~=0)=[]                     %删除复数
y0=f(x0);                              %零点纵坐标
hold on                                %保持属性
plot(x0,y0,'*')                        %画零点
text(x0,y0,num2str(x0),'FontSize',16)  %标记零点
%计算导数的零点并标记极值
dx0=solve(dy_dx)                       %求导数的符号零点
dx0=double(dx0)                        %化为数值
dy0=f(dx0);                            %求极值
stem(dx0,dy0,'--')                     %画杆线
text(dx0,dy0,[num2str(dx0),repmat(',',length(dx0),1),num2str(dy0)],...
    'FontSize',16)                     %标记极值
%计算二阶导数的零点并标记拐点
d2x0=solve(d2y_dx2)                    %求二阶导数的符号零点
d2x0=double(d2x0)                      %化为数值
d2y0=f(d2x0);                          %拐点的函数值
stem(d2x0,d2y0,'--d')                  %画杆线
text(d2x0,d2y0,[num2str(d2x0),repmat(',',length(d2x0),1),num2str(d2y0)],...
    'FontSize',16)                     %标记拐点
 
%程序结束.周群益设计
