%���κ������廭���ĺ����ļ�
function varargout=fun(varargin)       %���庯���ļ�
if nargin>3,return,end                 %��������������3�����򷵻ص�������
a=varargin{1};                         %ȡ��һ�ߵĳ���
x=[1,-1,-1,1,1]*a/2;                   %���ζ��������
figure                                 %����ͼ�δ���
switch nargin                          %����ѡ��
    case {1,2}                         %������1,2��������������
        if nargin==1                   %�����1���������
            b=a;                       %������ͬ
            t=['������(\ita\rm=',num2str(a),')'];%�γɱ����ַ���
        else                           %����
            b=varargin{2};             %ȡ�ڶ��ߵĳ���
            t=['������(\ita\rm=',num2str(a),',\itb\rm=',num2str(b),')'];%���⴮
        end                            %��������
        l=2*(a+b);                     %���ܳ�
        s=a*b;                         %�����
        tt=['\itL\rm=',num2str(l),',\itS\rm=',num2str(s)];%�γɽ���ַ���
        y=[1,1,-1,-1,1]*b/2;           %���ζ���������
        plot(x,y,'LineWidth',2)        %������
    otherwise                          %�������
        b=varargin{2};                 %ȡ�ڶ��ߵĳ���
        c=varargin{3};                 %ȡ�����ߵĳ���
        y=[1,1,-1,-1,1]*b/2;           %�����嶥��������
        z=ones(size(x))*c/2;           %�����嶥�������
        plot3(x,y,z,x,y,-z,'LineWidth',2)%��������������
        hold on                        %��������
        plot3([x;x],[y;y],[z;-z],'LineWidth',2)%����������������
        t=['������(\ita\rm=',num2str(a),',\itb\rm=',num2str(b),...
            ',\itc\rm=',num2str(c),')']%�γɱ����ַ���
        zlabel('\itz','FontSize',16)   %�Ӹ�����
        l=4*(a+b+c);                   %��߳�
        s=2*(a*b+b*c+c*a);             %������
        v=a*b*c;                       %�����
        tt=['\itL\rm=',num2str(l),',\itS\rm=',num2str(s),...
            ',\itV\rm=',num2str(v)];   %����ַ���
        varargout{3}=v;                %������
end                                    %�˳�����
grid on                                %������
axis equal                             %ʹ���������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
title(t,'FontSize',16)                 %�ӱ���
text(0,0,tt,'FontSize',16)             %˵�����
varargout{1}=l;                        %����ܳ�
varargout{2}=s;                        %������

%�������.��Ⱥ�����
