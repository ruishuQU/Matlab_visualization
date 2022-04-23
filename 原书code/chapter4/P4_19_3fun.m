%椭圆绕高轴旋转的椭球面的函数文件
function fun(b)
e=sqrt(1-b^2);                         %偏心率
vz=b;                                  %绕纵轴旋转的体积
sz=(1+b^2/e*log((1+e)/(1-e))/2)/2;     %绕纵轴旋转的表面积
figure                                 %创建图形窗口
ellipsoid(0,0,0,1,1,b,50)              %画椭球面
title(['椭圆绕高轴旋转的椭球面(\itb/a\rm=',num2str(b),...
    ',\ite\rm=',num2str(e),')'],'FontSize',16)%加标题
xlabel('\itx/a','FontSize',16)         %加横坐标
ylabel('\ity/a','FontSize',16)         %加纵坐标
zlabel('\itz/a','FontSize',16)         %加高坐标
axis equal                             %使坐标间隔相等
shading interp                         %染色
alpha(0.5)                             %曲面半透明
box on                                 %加框
text(0,0,['\itV_z/V\rm_0=',num2str(vz),...
    ',\itS_z/S\rm_0=',num2str(sz)],'FontSize',16)%加说明

%程序结束.周群益设计
