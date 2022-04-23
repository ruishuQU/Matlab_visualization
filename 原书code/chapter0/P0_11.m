%验证半角公式
clear                                  %清除变量
a=-360:10:360;                         %度数向量
x=a*pi/180;                            %弧度向量
figure                                 %创建图形窗口
subplot(2,1,1)                         %选子图
plot(x,cos(x/2).^2,'x-',x,(1+cos(x))/2,'o','LineWidth',2)%画函数曲线
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('cos^2\itx\rm/2','FontSize',16) %加纵坐标
title('验证半角的余弦函数平方公式','FontSize',16)%加标题
legend('半角的余弦函数平方','展开式',0) %加图例
grid on                                %加网格
y1=cos(x/2);                           %半角的余弦函数
y2=sqrt((1+cos(x))/2);                 %展开式
subplot(2,1,2)                         %选子图
plot(x,y1,'x-',x,y2,'o','LineWidth',2) %画函数曲线
l=x<-pi|x>pi;                          %逻辑值
y2(l)=-y2(l);                          %逻辑真者改为反值
hold on                                %保持属性
plot(x,y2,'sr','LineWidth',2)          %画函数曲线
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('cos\itx\rm/2','FontSize',16)   %加纵坐标
title('验证半角的余弦函数公式','FontSize',16)%加标题
grid on                                %加网格
legend('半角的余弦函数','取正号的展开式','考虑符号的展开式',0)%加图例

%程序结束.周群益设计
