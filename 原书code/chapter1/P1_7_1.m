%���Ǻ������ʽ����֤
clear                                  %�������
x=linspace(-2*pi,2*pi);                %�Ա�������
y1=3*cos(x)/4;                         %���Һ���
y2=cos(3*x)/4;                         %3��Ƶ���Һ���
y=cos(x).^3;                           %������������
figure                                 %����ͼ�δ���
plot(x,y,'.-',x,y1,'--',x,y2,'-.',x,y1+y2,'o','LineWidth',2)%����������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
title('�������������ĺ��ʽ','FontSize',16)%�ӱ���
grid on                                %������
axis tight                             %����
legend('������������','���Һ���','3�����Һ���','չ��ʽ')%ͼ��

y=sin(x).^3;                           %������������
y1=3*sin(x)/4;                         %���Һ���
y2=sin(3*x)/4;                         %3��Ƶ���Һ���
figure                                 %����ͼ�δ���
plot(x,y,'.-',x,y1,'--',x,y2,'-.',x,y1-y2,'o','LineWidth',2)%����������
title('�������������ĺ��ʽ','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
grid on                                %������
axis tight                             %����
legend('������������','���Һ���','3�����Һ���','չ��ʽ')%ͼ��

syms x                                 %������ű���
y=(3*cos(x)+cos(3*x))/4;               %���ʽ�ұ�
simplify(y)                            %����
y=cos(x)^3-(3*cos(x)+cos(3*x))/4;      %����ĺ��ʽ 
simplify(y)                            %����
y=cos(x)^3                             %�����������ź���
simple(y)                              %����

y=(3*sin(x)-sin(3*x))/4;               %���ʽ�ұ�
simplify(y)                            %����
y=sin(x)^3-(3*sin(x)-sin(3*x))/4;      %����ĺ��ʽ
simplify(y)                            %����
y=sin(x)^3                             %�����������ź���
simple(y)                              %����

%�������.��Ⱥ�����
