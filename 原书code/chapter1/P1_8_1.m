%˫������
clear                                  %�������
xm=2;                                  %����Ա���
x=-xm:0.01:xm;                         %�Ա�������
y=exp(x)/2;                            %��������
figure                                 %����ͼ�δ���
plot(x,sinh(x),x,cosh(x),'--',x,y,':',-x,y,'-.','LineWidth',2)%����������
title('˫�����Һ�˫����������','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
grid on                                %������
legend('sinh','cosh',4)                %ͼ��

figure                                 %����ͼ�δ���
plot(x,tanh(x),x,coth(x),'--','LineWidth',2)%����������
title('˫�����к�˫����������','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
grid on                                %������
legend('tanh','coth',4)                %ͼ��
ym=4;                                  %���������
axis([-xm,xm,-ym,ym])                  %�������߷�Χ

figure                                 %����ͼ�δ���
plot(x,sech(x),x,csch(x),'--','LineWidth',2)%����������
title('˫�������˫���������','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
grid on                                %������
legend('sech','csch',4)                %ͼ��
axis([-xm,xm,-ym,ym])                  %�������߷�Χ

%�������.��Ⱥ�����
