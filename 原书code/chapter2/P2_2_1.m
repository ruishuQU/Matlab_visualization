%�����еļ���
clear                                  %�������
syms a n                               %������ű���
an=a^(1/n);                            %����ͨ��
l=limit(an,n,inf)                      %����ż���
l=double(l)                            %����ֵ����
fn=inline(an)                          %�������л�Ϊ���ߺ���
a=0.5:0.5:2;                           %��������
nm=100;                                %�������
n=1:nm;                                %��������
[A,N]=meshgrid(a,n);                   %�������������� 
figure                                 %����ͼ�δ���
plot(n,fn(A,N),'LineWidth',2)          %��������
xlabel('\itn','FontSize',16)           %�Ӻ�����
ylabel('\ita_n','FontSize',16)         %��������
title('�����еļ���','FontSize',16)    %�ӱ���
grid on                                %������
legend([repmat('\ita\rm=',length(a),1),num2str(a')])%��ͼ��
hold on                                %����ͼ��
plot(nm,l,'or')                        %������Զ��������ֵ
text(nm,l,num2str(l),'FontSize',16)    %��Ǽ���

%�������.��Ⱥ�����
