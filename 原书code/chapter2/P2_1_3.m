%�޼��޵�����
clear                                  %�������
nm=20;                                 %�������
n=1:nm;                                %��������
an=n.^((-1).^n);                       %����
figure                                 %����ͼ�δ���
plot(n,an,'LineWidth',2)               %����
title('�޼��޵�����','FontSize',16)    %�ӱ���
xlabel('\itn','FontSize',16)           %�Ӻ�����
ylabel('\ita_n','FontSize',16)         %��������
grid on                                %������
k=1:nm/2;                              %��������
hold on                                %����ͼ��
plot(2*k,2*k,'+--',2*k-1,1./(2*k-1),'x--','LineWidth',2)%����

%�������.��Ⱥ�����
