%��˫������
clear                                  %�������
xm=3;                                  %����Ա���
x=-xm:0.01:xm;                         %�Ա�������
xx=1:0.01:xm;                          %�Ա�������
yac=acosh(xx);                         %��˫�����Һ���
figure                                 %����ͼ�δ���
plot(x,asinh(x),xx,yac,'--',xx,-yac,'g--','LineWidth',2)%����������
title('��˫�����Һͷ�˫�����Һ���','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
grid on                                %������
legend('��˫������','��˫������',2)    %ͼ��

x0=-1:0.05:1;                          %�Ա�������
yac=acoth(xx);                         %��˫�����к���
figure                                 %����ͼ�δ���
plot(x0,atanh(x0),xx,yac,'--',-xx,-yac,'g--','LineWidth',2)%����������
title('��˫���������ߺͷ�˫�����к���','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
grid on                                %������
legend('��˫������','��˫������',2)    %ͼ��
pause                                  %��ͣ
y=log(abs((1+x)./(1-x)))/2;            %����
hold on                                %��������
plot(x,y,'.')                          %����������

%�������.��Ⱥ�����
