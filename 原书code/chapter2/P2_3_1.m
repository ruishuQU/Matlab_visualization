%�����к�ָ�����еıȽ�
clear                                  %�������
a=input('���������a(>1):');          %�����������
% a=2;                                   %�����ο�ֵ
% a=3;                                   %�����ο�ֵ
alpha=-2:2;                            %ָ������
nm=20;                                 %�������
n=1:nm;                                %��������
[N,A]=meshgrid(n,alpha);               %������ָ������
Yn=N.^A./a.^N;                         %ͨ��
figure                                 %����ͼ�δ���
plot(n,Yn,'LineWidth',2)               %��������
title('�����к�ָ�����еıȽ�','FontSize',16)%�ӱ���
xlabel('\itn','FontSize',16)           %�Ӻ�����
ylabel('\ita_n','FontSize',16)         %��������
grid on                                %������
legend([repmat('\it\alpha\rm=',length(alpha),1),num2str(alpha')])%��ͼ��
text(0,0,['\ita\rm=',num2str(a)],'FontSize',16)%��˵��
text(nm,0,'0','FontSize',16)           %��Ǽ���

%�������.��Ⱥ�����
