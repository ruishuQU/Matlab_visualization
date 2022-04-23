%矩形和立方体画法的函数文件
function varargout=fun(varargin)       %定义函数文件
if nargin>3,return,end                 %如果输入参数超过3个数则返回到主程序
a=varargin{1};                         %取第一边的长度
x=[1,-1,-1,1,1]*a/2;                   %矩形顶点横坐标
figure                                 %创建图形窗口
switch nargin                          %开关选择
    case {1,2}                         %对于有1,2个输入参数的情况
        if nargin==1                   %如果有1个输入参数
            b=a;                       %两边相同
            t=['正方形(\ita\rm=',num2str(a),')'];%形成标题字符串
        else                           %否则
            b=varargin{2};             %取第二边的长度
            t=['长方形(\ita\rm=',num2str(a),',\itb\rm=',num2str(b),')'];%标题串
        end                            %结束条件
        l=2*(a+b);                     %求周长
        s=a*b;                         %求面积
        tt=['\itL\rm=',num2str(l),',\itS\rm=',num2str(s)];%形成结果字符串
        y=[1,1,-1,-1,1]*b/2;           %矩形顶点纵坐标
        plot(x,y,'LineWidth',2)        %画矩形
    otherwise                          %其他情况
        b=varargin{2};                 %取第二边的长度
        c=varargin{3};                 %取第三边的长度
        y=[1,1,-1,-1,1]*b/2;           %立方体顶点纵坐标
        z=ones(size(x))*c/2;           %立方体顶点高坐标
        plot3(x,y,z,x,y,-z,'LineWidth',2)%画立方体上下面
        hold on                        %保持属性
        plot3([x;x],[y;y],[z;-z],'LineWidth',2)%画立方体上下连线
        t=['立方体(\ita\rm=',num2str(a),',\itb\rm=',num2str(b),...
            ',\itc\rm=',num2str(c),')']%形成标题字符串
        zlabel('\itz','FontSize',16)   %加高坐标
        l=4*(a+b+c);                   %求边长
        s=2*(a*b+b*c+c*a);             %求表面积
        v=a*b*c;                       %求体积
        tt=['\itL\rm=',num2str(l),',\itS\rm=',num2str(s),...
            ',\itV\rm=',num2str(v)];   %结果字符串
        varargout{3}=v;                %输出体积
end                                    %退出开关
grid on                                %加网格
axis equal                             %使坐标间隔相等
xlabel('\itx','FontSize',16)           %加横坐标
ylabel('\ity','FontSize',16)           %加纵坐标
title(t,'FontSize',16)                 %加标题
text(0,0,tt,'FontSize',16)             %说明结果
varargout{1}=l;                        %输出周长
varargout{2}=s;                        %输出面积

%程序结束.周群益设计
