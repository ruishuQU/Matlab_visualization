%��ָ���еļ���
clear                                  %�������
syms n                                 %������ű���
an=n^(1/n);                            %����ͨ��
l=limit(an,n,inf)                      %����ż���
l=double(l)                            %����ֵ����
fn=inline(an)                          %�������л�Ϊ���ߺ���
nm=1000;                               %�������
n=1:nm;                                %��������
figure                                 %����ͼ�δ���
plot(n,fn(n),'LineWidth',2)            %������
title('��ָ���еļ���','FontSize',16)  %�ӱ���
xlabel('\itn','FontSize',16)           %�Ӻ�����
ylabel('\ita_n','FontSize',16)         %��������
grid on                                %������
hold on                                %����ͼ��
plot(nm,l,'or')                        %������Զ��������ֵ
text(nm,l,num2str(l),'FontSize',16)    %��Ǽ���

%�������.��Ⱥ�����
