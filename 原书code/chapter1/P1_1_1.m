%����ֵ�����Ĺ���֮һ
clear                                  %�������
xm=3;                                  %����Ա���
x=-xm:xm;                              %�Ա�������
y=abs(x);                              %��������
figure                                 %����ͼ�δ���
plot(x,x,'--',x,y,'LineWidth',2)       %����
grid on                                %������
title('�þ���ֵ������ʵ���ľ���ֵ','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������

%�������.��Ⱥ�����
