%根式之差数列的极限的函数文件
function fun(an,nm,tit)
syms n                                 %定义符号变量
l=limit(an,n,inf)                      %求符号极限
l=double(l)                            %化为数值
fn=inline(an)                          %符号数列化为内线函数
n=1:nm;                                %整数向量
figure                                 %创建图形窗口
plot(n,fn(n),'LineWidth',2)            %画数列曲线
xlabel('\itn','FontSize',16)           %加横坐标
ylabel('\ita_n','FontSize',16)         %加纵坐标
title([tit,'数列的极限'],'FontSize',16)%加标题
grid on                                %加网格
hold on                                %保持图像
plot(nm,l,'or')                        %在有限远处画极限值
text(nm,l,num2str(l),'FontSize',16)    %标记极限

%程序结束.周群益设计
