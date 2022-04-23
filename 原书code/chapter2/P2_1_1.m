%һ��������ʽ���еļ���
clear                                  %�������
syms n                                 %������ű���
an=n/(n+1)                             %��������
l=limit(an,n,inf)                      %����ż���
l=double(l)                            %��Ϊ��ֵ
fn=inline(an)                          %�������л�Ϊ���ߺ���
%fn=inline(vectorize(an))               %�������л�Ϊ���ߺ���
nm=1200;                               %�������
n=1:nm;                                %��������
figure                                 %����ͼ�δ���
plot(n,fn(n),'LineWidth',2)            %����������
title('һ��������ʽ���еļ��޺�С���Լ��ٽ�����','FontSize',16)%�ӱ���
xlabel('\itn','FontSize',16)           %�Ӻ�����
ylabel('\ita_n','FontSize',16)         %��������
grid on                                %������
hold on                                %����ͼ��
plot(nm,l,'or')                        %������Զ��������ֵ
text(nm,l,num2str(l),'FontSize',16)    %��Ǽ���
n=3;                                   %��ֵ����
epsilon=1./10.^(1:n);                  %С��
nc=floor(1./epsilon);                  %�ٽ�����
plot(nc,fn(nc),'*')                    %����������������������ֵ
text(nc,fn(nc),num2str(epsilon'),'FontSize',16)%���С��
text(nc,fn(nc)-0.03,num2str(nc'),'FontSize',16)%����ٽ�����

%�������.��Ⱥ�����
