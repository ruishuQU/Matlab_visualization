%������κ�Բ�Ļ���
clear                                  %�������
n=input('���������:');                %����������
%n=3;                                  %�ο�ֵ
k=0:n;                                 %��������
ak=2*pi/n*k;                           %�Ƕ�����
x=cos(ak);                             %����������
y=sin(ak);                             %����������
figure                                 %����ͼ�δ���
plot(x,y,y,x,'--','LineWidth',2)       %�������������
axis equal                             %ʹ���������
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
ylabel('\ity/a','FontSize',16)         %��������
title(['�������(\itn\rm=',num2str(n),')'],'FontSize',16)%�ӱ���
grid on                                %������
legend('�������������','�������������')%��ͼ��

%�������.��Ⱥ�����
