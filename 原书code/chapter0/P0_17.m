%���������ߵĻ���
clear                                  %�������
t=linspace(0,4*pi,1000);               %��������
r=t;                                   %��������
figure                                 %����ͼ�δ���
polar(t,r)                             %������������
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
ylabel('\ity/a','FontSize',16)         %��������
title('�����׵�����','FontSize',16)    %�ӱ���
grid on                                %������
x=r.*cos(t);                           %����������
y=r.*sin(t);                           %����������
%[x,y]=pol2cart(t,r);                   %ֱ����������
hold on                                %��������
comet(x,y)                             %��ʾ����ʽ���߶���

%�������.��Ⱥ�����
