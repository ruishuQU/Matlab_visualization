%ָ������
clear                                  %�������
xm=3;                                  %����Ա���
x=-xm:0.1:xm;                          %�Ա�������
e=exp(1);                              %��Ȼ������
a=[1/e,0.5:0.5:2.5,e];                 %��������
[A,X]=meshgrid(a,x);                   %�������Ա�������
Y=A.^X;                                %ָ����������
figure                                 %����ͼ�δ���
plot(x,Y,'LineWidth',2)                %������������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
title('ָ������������','FontSize',16)  %�ӱ���
grid on                                %������
%legend(num2str(a'))                    %��ͼ��
legend([repmat('\ita\rm=',length(a),1),num2str(a')],0)%����ͼ��
axis([-xm,xm,0,6])                     %�������귶Χ
hold on                                %��������
plot(x,exp(x),'+',x,exp(-x),'x')       %����eΪ�׵�ָ������

%�������.��Ⱥ�����
