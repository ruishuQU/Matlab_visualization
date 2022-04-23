%开口向右的抛物线面积的梯形法的近似计算
clear                                  %清除变量
syms x                                 %定义符号变量
y=sqrt(x);                             %开口向右的符号抛物线
%y=x^2;                                 %开口向上的符号抛物线
s=int(y,0,1)                           %积分求抛物线下的面积
s=double(s)                            %化为数值
f=inline(y)                            %内线函数
x=linspace(0,1);                       %横坐标向量
figure                                 %创建图形窗口
plot(x,f(x),'LineWidth',2)             %画抛物线
title('开口向右的抛物线下的面积和梯形法近似计算','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
text(0,0.8,['\itS\rm=',num2str(s)],'FontSize',16)%显示面积
ht=text(0,0.7,'','FontSize',16);       %取句柄
grid on                                %加网格
hold on                                %保持属性
hf=fill(0,0,'y');                      %画填充图并取句柄
sn1=[];                                %梯形法面积向量置空
sn2=[];                                %矩形法面积向量置空
mm=10;                                 %最大指数
for m=1:mm                             %循环
    n=2^m;                             %取2的幂
    x=linspace(0,1,n+1);               %横坐标向量
    y=f(x);                            %纵坐标向量
    dx=1/n                             %取间隔
    sn=trapz(y)*dx;                    %求梯形法的面积
    set(ht,'String',['\itn\rm=',num2str(n),',\itS_n\rm=',num2str(sn)])%更换数值
    set(hf,'XData',[x,1],'YData',[y,0])%设置坐标成新的填充图
    stem(x,y,'.')                      %画杆线
    alpha(0.5)                         %平面半透明
    sn1=[sn1,sn];                      %连接面积
    pause                              %暂停
    sn=sum(y(1:end-1)*dx)              %求矩形法的面积
    sn2=[sn2,sn];                      %连接面积
end                                    %结束循环
m=1:mm;                                %指数向量
figure                                 %创建图形窗口
plot(m,sn1,'-*',m,sn2,'--+','LineWidth',2)%画面积变化曲线
title('开口向右的抛物线下的面积的两种方法的比较','FontSize',16)%加标题
xlabel('\itm','FontSize',16)           %加横坐标
ylabel('\itS_n','FontSize',16)         %加纵坐标
legend('梯形法','矩形法',4)            %加图例
grid on                                %加网格
hold on                                %保持属性
plot([1,mm],[s,s],'-.o','LineWidth',2) %画极限线
text(1,s,['\itS\rm=',num2str(s)],'FontSize',16)%显示面积

%程序结束.周群益设计
