%�������ĵ������еļ���
clear                                  %�������
a=0.5:0.5:3;                           %��������
an=ones(size(a));                      %��ֵ����
An=an;                                 %�����ֵ
nm=10;                                 %�������
for n=2:nm                             %������ѭ��
    an=(an+a./an)/2;                   %������һ������
    An=[An;an];                        %���������ɾ���
end                                    %����ѭ��
figure                                 %����ͼ�δ���
plot(An,'LineWidth',2)                 %����
xlabel('\itn','FontSize',16)           %�Ӻ�����
ylabel('\ita_n','FontSize',16)         %��������
title('�������ĵ������еļ���','FontSize',16)%�ӱ���
grid on                                %������
legend([repmat('\ita\rm=',length(a),1),num2str(a')])%��ͼ��
l=sqrt(a);                             %����
hold on                                %��������
plot(nm,l,'o')                         %������
text(nm*ones(size(a)),l,num2str(l'),'FontSize',16)%��Ǽ����ı�

an=[0.5,1.5];                          %��ֵ����
An=an;                                 %�����ֵ����
for n=2:nm                             %ѭ��
    an=(an+1./an)/2;                   %������һ������
    An=[An;an];                        %���������ɾ���
end                                    %����ѭ��
n=1:nm;                                %��������
figure                                 %����ͼ�δ���
plot(n,An(:,1),'*-',n,An(:,2),'o--','LineWidth',2)%����
xlabel('\itn','FontSize',16)           %�Ӻ�����
ylabel('\ita_n/a\rm^{1/2}','FontSize',16)%��������
title('Լ���ĵ������еļ���','FontSize',16)%�ӱ���
grid on                                %������
legend([repmat('\ita\rm_1/\ita\rm^{1/2}=',2,1),num2str(An(1,:)')])%ͼ��

%�������.��Ⱥ�����
