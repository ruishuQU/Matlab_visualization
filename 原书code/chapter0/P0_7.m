%点,直线和曲线的画法
figure                                 %创建图形窗口
subplot(2,3,1)                         %选择2行3列第1个子窗口
plot(0,0,'o')                          %画点(圈)
subplot(2,3,2),plot([-2,2],[0,0])      %选择2行3列第2个子窗口,画水平实线
subplot(2,3,3),plot([0,0],[-2,2],'--^')%选择2行3列第3个子窗口,画竖直虚线
subplot(2,3,4),plot([-3,1],[-2,2],'-.x')%选择2行3列第4个子窗口,画斜点虚线
grid                                   %加网格
x=-2:0.1:2                             %横坐标向量
y=x.^2                                 %纵坐标向量
subplot(2,3,5),plot(x,y,'.-',x,-y,':*')%选择2行3列第5个子窗口,画上下抛物线
subplot(2,3,6),plot(y,x,'p-r',-y,x,':hc')%选择2行3列第6个子窗口,画左右抛物线

%程序结束.周群益设计
