%�������еļ���
clear                                  %�������
a0=input('�������һ��:');             %���������һ��
%a0=1;                                  %��һ���ο�ֵ
%a0=2;                                  %��һ���ο�ֵ
an=a0;                                 %�����һ��ֵ
nm=10;                                 %�������
for n=1:nm                             %ѭ��
    a0=1+a0./(1+a0);                   %������һ��ֵ
    an=[an;a0];                        %���Ӵ�ֵ
end                                    %����ѭ��
n=0:nm;                                %��������
figure                                 %����ͼ�δ���
plot(n,an,'*-','LineWidth',2)          %����
xlabel('\itn','FontSize',16)           %�Ӻ�����
ylabel('\ita_n','FontSize',16)         %��������
title('�������еļ���','FontSize',16)  %�ӱ���
grid on                                %������
l=(1+sqrt(5))/2;                       %����
hold on                                %��������
plot([0,nm],[l,l],'--','LineWidth',2)  %��������
text(nm,l,num2str(l),'FontSize',16)    %��ʾ�����ı�

%�������.��Ⱥ�����
