%�е��ƹ�ʽ������ż�ݺ����Ķ�����
clear                                  %�������
syms x n                               %������ű���
yn=tan(x)^(2*n);                       %�����ķ��ź���
a=0;                                   %��������
b=pi/4;                                %��������
jn=int(yn,a,b)                         %������Ŷ�����
nm=40;                                 %�������
n=0:nm;                                %��Ȼ������
jn=subs(jn,'n',n);                     %�����滻Ϊ��ֵ
jn=double(jn);                         %��Ϊ��ֵ
figure                                 %����ͼ�δ���
plot(n,jn,'*-','LineWidth',2,'MarkerSize',10)%������
title('����ż�ݺ����Ķ�����','FontSize',16)%��Ǳ���
xlabel('\itn','FontSize',16)           %��Ǻ�����
ylabel('\itJ_n','FontSize',16)         %���������
grid on                                %������
n=1:nm;                                %��Ȼ������
jn=(-1).^n.*(pi/4+cumsum((-1).^n./(2*n-1)));%�����ֵ
jn=[pi/4,jn];                          %�����һ��ֵ
hold on                                %����ͼ��
plot([0,n],jn,'or','MarkerSize',10)    %������
legend('���Ž�','������')              %��ͼ��

%�������.��Ⱥ�����
