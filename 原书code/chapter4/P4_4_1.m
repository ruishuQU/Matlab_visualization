%�е��ƹ�ʽ�����Һ����Һ����ݵĶ�����
clear                                  %�������
syms x n                               %������ű���
yn=sin(x)^n;                           %�����ķ��ź���
%yn=cos(x)^n;                           %�����ķ��ź���
a=0;                                   %��������
b=pi/2;                                %��������
in=int(yn,a,b)                         %������Ŷ�����
nm=40;                                 %�������
n=0:nm;                                %��Ȼ������
in=subs(in,'n',n);                     %�����滻Ϊ��ֵ
in=double(in);                         %��Ϊ��ֵ
figure                                 %����ͼ�δ���
plot(n,in,'*-','LineWidth',2,'MarkerSize',10)%������
xlabel('\itn','FontSize',16)           %��Ǻ�����
ylabel('\itI_n','FontSize',16)         %���������
title('���Һ������ݺ����Ķ�����','FontSize',16)%��Ǳ���
grid on                                %������
n=2:2:nm;                              %ż������
in=cumprod(n-1)./cumprod(n)*pi/2;      %�ý����������ֵ
in=[pi/2,in];                          %�����һ��ֵ
hold on                                %����ͼ��
plot([0,n],in,'or','MarkerSize',10)    %��ż������������
n=3:2:nm;                              %��������
in=cumprod(n-1)./cumprod(n);           %�ý����������ֵ
in=[1,in];                             %�����һ��ֵ
plot([1,n],in,'sg','MarkerSize',10)    %����������������
legend('���Ž�','ż��������','����������')%��ͼ��

%�������.��Ⱥ�����
