%三角形的类型
clear                                  %清除变量
abc=input('请输入三角形的边长a,b和c:');%键盘输入边长
%abc=[4,3,6];                           %钝角三角形参考值
%abc=[4,4,6];                           %等腰钝角三角形参考值
%abc=[3,5,4];                           %直角三角形参考值
%abc=[2,sqrt(2),sqrt(2)]*2.5;           %等腰直角三角形参考值
%abc=[4,3,3];                           %等腰锐角三角形参考值
%abc=[2,3,3];                           %等腰锐角三角形参考值
%abc=[3,3,3];                           %等边三角形参考值
%----------------------------------------------------------
n=length(abc);                         %数值的个数
if n~=3 return,end                     %如果个数不等于3则返回
abc=sort(abc)                          %排序
a=abc(1)                               %取最小值作为a边
b=abc(2)                               %取中值作为b边
c=abc(3)                               %取最大值作为c边
if a<=0|a+b<=c,return,end              %如果a边为负值或者两边之和小于等于第三边
d=(a+b+c)/2;                           %半周长
s=sqrt(d*(d-a)*(d-b)*(d-c));           %面积
if abs(a^2+b^2-c^2)<1e-5               %如果三边满足勾股定理
    t='直角三角形';                    %取标题
elseif a^2+b^2>c^2                     %否则如果两个短边的平方和较大
    t='锐角三角形';                    %取标题
else                                   %否则
    t='钝角三角形';                    %取标题
end                                    %结束条件
if a==b&b==c                           %如果三边相等
    t=['等边',t];                      %连接标题
elseif a==b|b==c                       %如果有两边相等
    t=['等腰',t];                      %连接标题
end                                    %结束条件
A=acos((b^2+c^2-a^2)/(2*b*c));         %求A角
xC=b*cos(A);                           %求C点横坐标
yC=b*sin(A);                           %求C点纵坐标
x=[0,c,xC,0];                          %三角形顶点横坐标
y=[0,0,yC,0];                          %三角形顶点纵坐标
figure                                 %创建图形窗口
plot(x,y,'LineWidth',2)                %画三角形
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
title([t,'(\ita\rm=',num2str(a),',\itb\rm=',num2str(b),...
    ',\itc\rm=',num2str(c),')'],'FontSize',16)%加标题
grid on                                %加网格
axis equal                             %使坐标间隔相等
text([0,c,xC],[0,0,yC],['\itA';'\itB';'\itC'],'FontSize',16)%标记字母
text(c/2,yC/2,['\itS\rm=',num2str(s)],'FontSize',16)%标记面积

%程序结束.周群益设计
