%矩形的画法
clear                                  %清除变量
a=input('请输入矩形的a边:');           %键盘输入a边的边长
b=input('请输入矩形的b边:');           %键盘输入b边的边长
% a=4;                                   %a边的参考值
% b=3;                                   %b边的参考值
% b=4;                                   %b边的参考值
x=[1,-1,-1,1,1]*a/2;                   %矩形顶点横坐标
y=[1,1,-1,-1,1]*b/2;                   %矩形顶点纵坐标
figure                                 %创建图形窗口
plot(x,y,'LineWidth',2)                %画矩形图
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
if a==b                                %如果两边相等
    title(['正方形(\ita\rm=',num2str(a),')'],'FontSize',16)%加标题
else                                   %否则
    title(['长方形(\ita\rm=',num2str(a),...
        ',\itb\rm=',num2str(b),')'],'FontSize',16)%加标题
end                                    %结束条件
% title(['长方形(\ita\rm=',num2str(a),...
%     ',\itb\rm=',num2str(b),')'],'FontSize',16)%加标题
% if a==b                                %如果两边相等
%     title(['正方形(\ita\rm=',num2str(a),')'],'FontSize',16)%修改标题
% end                                    %结束条件
grid on                                %加网格
axis equal                             %使坐标间隔相等
s=a*b;                                 %计算面积
l=2*(a+b);                             %计算周长
text(0,0,['\itL\rm=',num2str(l),',\itS\rm=',num2str(s)],...
    'FontSize',16)                     %标记周长和面积

%程序结束.周群益设计
