%三角函数恒等式的验证
clear                                  %清除变量
x=linspace(-2*pi,2*pi);                %自变量向量
y1=3*cos(x)/4;                         %余弦函数
y2=cos(3*x)/4;                         %3倍频余弦函数
y=cos(x).^3;                           %余弦立方函数
figure                                 %创建图形窗口
plot(x,y,'.-',x,y1,'--',x,y2,'-.',x,y1+y2,'o','LineWidth',2)%画函数曲线
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
title('余弦立方函数的恒等式','FontSize',16)%加标题
grid on                                %加网格
axis tight                             %贴框
legend('余弦立方函数','余弦函数','3倍余弦函数','展开式')%图例

y=sin(x).^3;                           %正弦立方函数
y1=3*sin(x)/4;                         %正弦函数
y2=sin(3*x)/4;                         %3倍频正弦函数
figure                                 %创建图形窗口
plot(x,y,'.-',x,y1,'--',x,y2,'-.',x,y1-y2,'o','LineWidth',2)%画函数曲线
title('正弦立方函数的恒等式','FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
grid on                                %加网格
axis tight                             %贴框
legend('正弦立方函数','正弦函数','3倍正弦函数','展开式')%图例

syms x                                 %定义符号变量
y=(3*cos(x)+cos(3*x))/4;               %恒等式右边
simplify(y)                            %化简
y=cos(x)^3-(3*cos(x)+cos(3*x))/4;      %移项的恒等式 
simplify(y)                            %化简
y=cos(x)^3                             %余弦立方符号函数
simple(y)                              %化简

y=(3*sin(x)-sin(3*x))/4;               %恒等式右边
simplify(y)                            %化简
y=sin(x)^3-(3*sin(x)-sin(3*x))/4;      %移项的恒等式
simplify(y)                            %化简
y=sin(x)^3                             %正弦立方符号函数
simple(y)                              %化简

%程序结束.周群益设计
