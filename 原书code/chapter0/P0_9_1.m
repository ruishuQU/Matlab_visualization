%验证三角函数的和差化积公式
clear                                  %清除变量
a=-360:10:360;                         %度数向量
x=a*pi/180;                            %弧度向量
y=pi/3;                                %取某一角度
z1=cos(x)+cos(y);                      %恒等式的左边
z2=2*cos((x-y)/2).*cos((x+y)/2);       %恒等式的右边
figure                                 %创建图形窗口
subplot(2,1,1)                         %选子图
plot(x,z1,'*-',x,z2,'o','LineWidth',2) %画函数曲线
title('验证余弦函数的和差化积公式','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
legend('左边','右边')                  %加图例
text(0,0,['\ity\rm=',num2str(y)],'FontSize',16)%加说明
grid on                                %加网格
subplot(2,1,2)                         %选子图
plot(x,sin(x)+sin(y),'*-',x,2*cos((x-y)/2).*sin((x+y)/2),'o',...
    'LineWidth',2)                     %画函数曲线
title('验证正弦函数的和差化积公式','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
legend('左边','右边')                  %图加例
text(0,0,['\ity\rm=',num2str(y)],'FontSize',16)%加说明
grid on                                %加网格

%程序结束.周群益设计
