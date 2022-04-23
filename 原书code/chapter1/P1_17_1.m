%����κ���
clear                                  %�������
syms x a b c                           %������ű���
y=a*x^2+b*x+c;                         %���η��ź���
x1=-2;                                 %��1��ĺ�����
y1=0;                                  %��1���������
x2=0;                                  %��2���ĺ�����
y2=1;                                  %��2���������
x3=1;                                  %��3���ĺ�����
y3=5;                                  %��3���������
s1=subs(y,x,x1)-y1                     %��1����������
s2=subs(y,x,x2)-y2                     %��2����������
s3=subs(y,x,x3)-y3                     %��3����������
[a,b,c]=solve(s1,s2,s3)                %�����������Ľ�
f=subs(y,{'a','b','c'},{a,b,c})        %����η��̵ľ�����ʽ
x=-3:0.1:3;                            %�Ա�������
y=subs(f,'x',x);                       %�γɺ���
figure                                 %����ͼ�δ���
plot(x,y,'LineWidth',2)                %����
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
title('���κ���','FontSize',16)        %�ӱ���
grid on                                %������
hold on                                %��������
plot([x1,x2,x3],[y1,y2,y3],'o')        %��Ȧ
text([x1,x2,x3],[y1,y2,y3],[num2str([x1;x2;x3]),[',';',';','],...
    num2str([y1;y2;y3])],'FontSize',16)%��Ǻ���ֵ
text(-1,10,'\ity\rm=\itax\rm^2+\itbx\rm+\itc','FontSize',16)%��ǹ�ʽ
text(-1,8,['\ita\rm=',num2str(double(a)),',\itb\rm=',num2str(double(b)),...
    ',\itc\rm=',num2str(double(c))],'FontSize',16)%���ϵ��

%�������.��Ⱥ�����
