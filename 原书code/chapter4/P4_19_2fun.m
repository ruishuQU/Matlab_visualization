%椭圆绕横轴旋转的椭球面的函数文件
function fun(b)
e=sqrt(1-b^2);                         %偏心率
vx=b^2;                                %绕横轴旋转的体积
sx=b*(b+asin(e)/e)/2;                  %绕横轴旋转的表面积
figure                                 %创建图形窗口
ellipsoid(0,0,0,1,b,b)                 %画椭球面
title(['椭圆绕横轴旋转的椭球面(\itb/a\rm=',num2str(b),...
    ',\ite\rm=',num2str(e),')'],'FontSize',20)%加标题
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\ity/a','FontSize',16)         %加纵坐标
zlabel('\itz/a','FontSize',16)         %加高坐标
axis equal                             %使坐标间隔相等
shading interp                         %染色
alpha(0.5)                             %曲面半透明
box on                                 %加框
text(0,0,['\itV_x/V\rm_0=',num2str(vx),...
    ',\itS_x/S\rm_0=',num2str(sx)],'FontSize',16)%加说明

%程序结束.周群益设计
