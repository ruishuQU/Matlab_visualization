%��������
clear                                  %�������
xm=3;                                  %����Ա���
x=0.1:0.1:xm;                          %�Ա�������
a=[1/exp(1),0.5:0.5:2,exp(1),10];      %��������
[A,X]=meshgrid(a,x);                   %�������Ա�������
Y=log(X)./log(A);                      %������������
%Y(isinf(Y))=0;                         %������Ϊ0
figure                                 %����ͼ�δ���
plot(x,Y,'LineWidth',2)                %������������
title('��������������','FontSize',16)  %�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
grid on                                %������
%legend(num2str(a'),4)                 %��ͼ��
legend([repmat('\ita\rm=',length(a),1),num2str(a')],4)%����ͼ��
hold on                                %��������
plot(x,-log(x),'*',x,log(x),'+',x,log10(x),'x')%������Ȼ�����ͳ��ö�������

%�������.��Ⱥ�����
