%�Գ����Ǻ����Ķ�����
clear                                  %�������
syms x                                 %������ű���
y1=sin(x)/(sin(x)+sqrt(1-sin(x)^2))    %���Ҹ��Ϻ����ķ��ű��ʽ
%y1=sin(x)/(sin(x)+cos(x))              %��1�������ķ��ű��ʽ
y2=cos(x)/(sqrt(1-cos(x)^2)+cos(x))    %���Ҹ��Ϻ����ķ��ű��ʽ
%y2=cos(x)/(sin(x)+cos(x))              %��2�������ķ��ű��ʽ
xm1=0;                                 %��������
xm2=pi/2;                              %��������
s1=int(y1,xm1,xm2)                     %��1�������ķ��Ż���
s1=double(s1)                          %��Ϊ��ֵ
s2=int(y2,xm1,xm2)                     %��2�������ķ��Ż���
s2=double(s2)                          %��Ϊ��ֵ

f1=inline(y1)                          %��1�����ߺ���
f2=inline(y2)                          %��2�����ߺ���
x=linspace(xm1,xm2);                   %����������
figure                                 %����ͼ�δ���
fill([x,xm2,xm1],[f1(x),0,0],'y')      %����ɫͼ
title('�Գ����Ǹ��Ϻ����Ķ�����','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
hold on                                %��������
fill([x,xm2,xm1],[f2(x),0,0],'c')      %����ɫͼ
grid on                                %������
alpha(0.5)                             %ƽ���͸��
legend(['���Ҹ��Ϻ����Ķ�����\itS\rm_{sin}=',num2str(s1)],...
    ['���Ҹ��Ϻ����Ķ�����\itS\rm_{cos}=',num2str(s1)],0)%��ͼ��

y=sym('1/(x+sqrt(1-x^2))')             %���ű��ʽ
xm2=1;                                 %��������
s1=int(y,xm1,xm2)                      %�����ķ��Ż���
f=inline(y)                            %���ߺ���
s2=quad(f,xm1,xm2)                     %����ֵ����
dx=0.01;                               %��������
x=0:dx:1;                              %����������
y=f(x);                                %����������
s3=trapz(y)*dx                         %�����η������
figure                                 %����ͼ�δ���
fill([x,xm2,xm1],[f(x),0,0],'y')       %����ɫͼ
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
ylabel('\itay','FontSize',16)          %��������
title('����ʽ�Ķ�����','FontSize',16)  %�ӱ���
grid on                                %������
text(0.5,0.5,['\itS\rm=',num2str(s2)],'FontSize',16)%��ʾ���

%�������.��Ⱥ�����
