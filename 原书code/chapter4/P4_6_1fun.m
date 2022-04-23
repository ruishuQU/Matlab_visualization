%上限是变量的定积分的函数文件
function fun(y,a,b)
s=int(y,a,'x')                         %函数的符号积分
f=inline(y)                            %内线函数
x=linspace(a,b,50);                    %横坐标向量
dx=x(2)-x(1);                          %横坐标间隔
y=f(x);                                %纵坐标向量
figure                                 %创建图形窗口
fill([x,b,a],[y,0,0],'y')              %画填色图
title(['上限是变量的定积分(\ita\rm=',num2str(a),')'],'FontSize',16)%加标题
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
grid on                                %加网格
s=subs(s,'x',x);                       %替换向量求积分值
hold on                                %保持属性
plot(x,s,'*-')                         %画积分曲线
text(b,s(end),['\itS\rm=',num2str(s(end))],'FontSize',16)%显示定积分结果
s=cumtrapz(y)*dx;                      %用累积梯形法求积分
%s=cumsum(y)*dx;                        %用累积矩形法求积分(误差较大)
plot(x,s,'or')                         %再画积分曲线
legend('被积函数包围面','符号积分','梯形法求和',0)%加图例

%程序结束.周群益设计
