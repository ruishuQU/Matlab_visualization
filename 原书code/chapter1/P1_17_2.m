%��ָ������
clear                                  %�������
syms x a b c                           %������ű���
y=a+b*c^x;                             %���ź���
x1=0;                                  %��1��ĺ�����
y1=15;                                 %��1���������
x2=2;                                  %��2���ĺ�����
y2=30;                                 %��2���������
x3=4;                                  %��3���ĺ�����
y3=90;                                 %��3���������
s1=subs(y,x,x1)-y1                     %��1����������
s2=subs(y,x,x2)-y2                     %��2����������
s3=subs(y,x,x3)-y3                     %��3����������
[a,b,c]=solve(s1,s2,s3)                %�����������Ľ�
a=a(1);                                %ȡ��1����
b=b(1);                                %ȡ��1����
c=c(1);                                %ȡ��1����
f=subs(y,{'a','b','c'},{a,b,c})        %��ָ�����̵ľ�����ʽ
x=-1:0.1:5;                            %�Ա�������
y=subs(f,'x',x);                       %�γɺ���
figure                                 %����ͼ�δ���
plot(x,y,'LineWidth',2)                %����
title('ָ������','FontSize',16)        %�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
grid on                                %������
hold on                                %��������
plot([x1,x2,x3],[y1,y2,y3],'o')        %��Ȧ
text([x1,x2,x3],[y1,y2,y3],[num2str([x1;x2;x3]),[',';',';','],...
    num2str([y1;y2;y3])],'FontSize',16)%��Ǻ���ֵ
text(0,40,'\ity\rm=\ita\rm+\itbc^x','FontSize',16)%��ǹ�ʽ
text(0,60,['\ita\rm=',num2str(double(a)),',\itb\rm=',num2str(double(b)),...
    ',\itc\rm=',num2str(double(c))],'FontSize',16)%���ϵ��

%�������.��Ⱥ�����
