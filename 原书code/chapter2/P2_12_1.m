%���Һ����˻��ļ��޺���
clear                                  %�������
nm=4;                                  %�������
n=1:nm;                                %����������
xm=15;                                 %��������
x=-xm:0.2:xm;                          %�Ա�������
[X,N]=meshgrid(x,n);                   %������������Ϊ����
Y=cumprod(cos(X./2.^N));               %����
figure                                 %����ͼ�δ���
plot(x,Y,'--',x,sin(x)./x,'.-k','LineWidth',2)%��������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf','FontSize',16)           %��������
title('���Һ����˻��ļ��޺���','FontSize',16)%�ӱ���
grid on                                %������
legend(char([repmat('\itn\rm=',nm,1),num2str(n')],'��������'))%��ͼ��
hold on                                %��������
plot(0,1,'or','LineWidth',2)           %������Ȧ

%�������.��Ⱥ�����
