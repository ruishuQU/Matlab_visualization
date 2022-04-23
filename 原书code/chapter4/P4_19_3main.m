%椭圆绕纵轴旋转包围的体积和表面积
clear                                  %清除变量
b=0:0.01:1;                            %短半轴向量
vz=b;                                  %绕纵轴旋转的体积
e=sqrt(1-b.^2);                        %偏心率
sz=(1+b.^2./e.*log((1+e)./(1-e))/2)/2; %绕纵轴旋转的表面积
figure                                 %创建图形窗口
subplot(2,1,1)                         %取子图
plot(b,vz,b,sz,'--','LineWidth',2)     %画曲线
title('椭圆绕高轴旋转包围的体积和表面积','FontSize',16)%加标题
xlabel('\itb/a','FontSize',16)         %加横坐标
grid on                                %加网格
legend('\itV_z/V\rm_0','\itS_z/S\rm_0',4)%加图例
text(0,0.5,'\itV\rm_0=4\pi\ita\rm^3/3,\itS\rm_0=4\pi\ita\rm^2',...
    'FontSize',16)                     %加说明
e=0:0.01:1;                            %偏心率向量
b=sqrt(1-e.^2);                        %短半轴
vz=b;                                  %绕纵轴旋转的体积
sz=(1+b.^2./e.*log((1+e)./(1-e))/2)/2; %绕纵轴旋转的表面积
subplot(2,1,2)                         %取子图
plot(e,vz,e,sz,'--','LineWidth',2)     %画曲线
title('椭圆绕高轴旋转包围的体积和表面积','FontSize',16)%加标题
xlabel('\ite','FontSize',16)           %加横坐标
grid on                                %加网格
legend('\itV_z/V\rm_0','\itS_z/S\rm_0',3)%加图例
text(0,0.5,'\itV\rm_0=4\pi\ita\rm^3/3,\itS\rm_0=4\pi\ita\rm^2',...
    'FontSize',16)                     %加说明
b=0.6;                                 %短半轴
P4_19_3fun(b)                          %调用函数文件
syms t                                 %定义符号变量
P4_18_2fun(cos(t),b*sin(t),-pi/2,pi/2,'椭圆')%调用函数文件
title(['椭圆绕高轴旋转所包围的体积和表面积(\itb/a\rm=',num2str(b),')'],...
    'FontSize',18)                     %修改标题

%程序结束.周群益设计
