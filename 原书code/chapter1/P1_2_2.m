%���ź����ڿ������е�Ӧ��
clear                                  %�������
xm=5;                                  %����Ա���
x=-xm:0.01:xm;                         %�Ա�������
y=x.^(1/3);                            %��������
figure                                 %����ͼ�δ���
subplot(2,1,1)                         %������ͼ
plot(x,y,'LineWidth',2)                %����
grid on                                %������
title('��������ȷ�Ŀ�����','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
y=sign(x).*abs(x).^(1/3);              %��������
subplot(2,1,2)                         %������ͼ
plot(x,y,'LineWidth',2)                %����
grid on                                %������
title('������ȷ�Ŀ�����','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������

%�������.��Ⱥ�����
