%�����ݺ���
clear                                  %�������
xm=3;                                  %����Ա���
x=-xm:0.01:xm;                         %�Ա�������
n=-3:3;                                %ָ������
[N,X]=meshgrid(n,x);                   %ָ�����Ա�������
Y=X.^N;                                %�ݺ�������
figure                                 %����ͼ�δ���
plot(x,Y,'LineWidth',2)                %������������
title('�����ݺ���������','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
grid on                                %������
%legend(num2str(a'),4)                 %��ͼ��
legend([repmat('\itn\rm=',length(n),1),num2str(n')],4)%����ͼ��
axis([-xm,xm,-5,5])                    %�������귶Χ

%�������.��Ⱥ�����
