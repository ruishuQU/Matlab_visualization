%�����ݺ���
clear                                  %�������
xm=3;                                  %����Ա���
x=-xm:0.05:xm;                         %�Ա�������
n=-1.5:0.5:1.5;                        %ָ������
[N,X]=meshgrid(n,x);                   %ָ�����Ա�������
Y=X.^N;                                %�ݺ�������
Y(imag(Y)~=0)=nan;                     %������Ϊ����
figure                                 %����ͼ�δ���
plot(x,Y,'LineWidth',2)                %������������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
title('�����ݺ���������','FontSize',16)%�ӱ���
grid on                                %������
%legend(num2str(a'),4)                 %��ͼ��
legend([repmat('\itn\rm=',length(n),1),num2str(n')],4)%����ͼ��
axis([-xm,xm,-4,4])                    %�������귶Χ
y=sqrt(x);                             %ƽ��������
y(imag(y)~=0)=nan;                     %������Ϊ����
hold on                                %��������
plot(x,y,'.')                          %����ƽ������������

%�������.��Ⱥ�����
