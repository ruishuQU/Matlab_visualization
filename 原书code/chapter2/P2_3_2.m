%�����кͶ������еıȽ�
clear                                  %�������
a=input('���������a(>1):');          %�����������
% a=2;                                   %�����ο�ֵ
% a=10;                                  %�����ο�ֵ
alpha=0.7:0.1:1.3;                     %ָ������
n=1:1000;                              %��������
[N,A]=meshgrid(n,alpha);               %������ָ������
Yn=log(N)/log(a)./N.^A;                %ͨ��
figure                                 %����ͼ�δ���
plot(n,Yn,'LineWidth',2)               %��������
title('�����кͶ������еıȽ�','FontSize',16)%�ӱ���
xlabel('\itn','FontSize',16)           %�Ӻ�����
ylabel('\ita_n','FontSize',16)         %��������
grid on                                %������
legend([repmat('\it\alpha\rm=',length(alpha),1),num2str(alpha')])%��ͼ��
text(0,0,['\ita\rm=',num2str(a)],'FontSize',16)%��˵��

%�������.��Ⱥ�����
