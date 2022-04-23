%�ݺ����ĵ���
clear                                  %�������
syms x n                               %������ű���
y=x^n                                  %���ź���
dy_dx=diff(y)                          %��y��x�ĵ���
f=inline(y);                           %���������ߺ���
df=inline(dy_dx)                       %���������ߺ���
xm=3;                                  %��������
dx=0.05;                               %���
x=-xm:dx:xm;                           %����������
n=-3:3;                                %��������
[N,X]=meshgrid(n,x);                   %�������������
Y=f(N,X);                              %�ݺ���ֵ
figure                                 %����ͼ�δ���
plot(x,Y,'LineWidth',2)                %��������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
title('�ݺ���','FontSize',16)          %�ӱ���
grid on                                %������
axis([-xm,xm,-3,3])                    %�������귶Χ
legend([repmat('\itn\rm=',length(n),1),num2str(n')],4)%��ͼ��
DY=df(N,X);                            %�ݺ���������ֵ
figure                                 %����ͼ�δ���
plot(x,DY,'LineWidth',2)               %��������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity\prime','FontSize',16)     %��������
title('�ݺ����ĵ���','FontSize',16)    %�ӱ���
grid on                                %������
axis([-xm,xm,-3,3])                    %�������귶Χ
legend([repmat('\itn\rm=',length(n),1),num2str(n')])%��ͼ��

%�������.��Ⱥ�����
