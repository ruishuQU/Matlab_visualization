%圆盘沿大圆滚动时动点的轨道的主程序
clear,r=0.2;d=0.1;                     %清除变量,圆盘的相对半径,动点的相对距离(1)
P1_19_2fun(r,r)              %调用函数文件画轨道(圆盘在大圆内部,动点在圆盘边缘)
P1_19_2fun(r,-r)             %调用函数文件画轨道(圆盘在大圆内部,动点在圆盘边缘)
P1_19_2fun(0.4,0.4)          %调用函数文件画轨道(圆盘在大圆内部,动点在圆盘边缘)
P1_19_2fun(r,d)              %调用函数文件画轨道(圆盘在大圆内部,动点在圆盘内部)
P1_19_2fun(r,-d)             %调用函数文件画轨道(圆盘在大圆内部,动点在圆盘内部)
P1_19_2fun(0.4,0.2)          %调用函数文件画轨道(圆盘在大圆内部,动点在圆盘内部)
P1_19_2fun(r,r+0.1)          %调用函数文件画轨道(圆盘在大圆内部,动点在圆盘外部)
P1_19_2fun(r,-(r+0.1))       %调用函数文件画轨道(圆盘在大圆内部,动点在圆盘外部)
P1_19_2fun(r+0.1,r+0.2)      %调用函数文件画轨道(圆盘在大圆内部,动点在圆盘外部)
P1_19_2fun(-r,r)             %调用函数文件画轨道(圆盘在大圆外部,动点在圆盘边缘)
P1_19_2fun(-r,-r)            %调用函数文件画轨道(圆盘在大圆外部,动点在圆盘边缘)
P1_19_2fun(-0.3,0.3)         %调用函数文件画轨道(圆盘在大圆外部,动点在圆盘边缘)

%程序结束.周群益设计
