%����e�����еļ���
clear                                  %�������
syms n                                 %������ű���
an=(1+1/n)^n;                          %��һ����������
la=limit(an,n,inf)                     %����ż���
bn=(1+1/n)^(n+1);                      %�ڶ�����������
lb=limit(bn,n,inf)                     %����ż���
fa=inline(an)                          %��һ���������л�Ϊ���ߺ���
fb=inline(bn)                          %�ڶ����������л�Ϊ���ߺ���
nm=100;                                %�����
n=1:nm;                                %��������
% xn=(1+1./n).^n;                        %����
% yn=(1+1./n).^(n+1);                    %����
an=fa(n);                              %���һ�����е�ֵ
bn=fb(n);                              %��ڶ������е�ֵ
figure                                 %����ͼ�δ���
plot(n,an,n,bn,'--','LineWidth',2)     %����
xlabel('\itn','FontSize',16)           %�Ӻ�����
title('����e�����еļ���','FontSize',16)%�ӱ���
grid on                                %������
legend('\ita_n','\itb_n')              %��ͼ��
e=double(la)                           %����ֵ
%e=double(ly)                           %����ֵ(ͬ��)
%e=exp(1);                              %ȡeֵ(ͬ��)
hold on                                %��������
plot([0,nm],[e,e],'*-.','LineWidth',2) %��������
text(0,e,num2str(e,16),'FontSize',16)  %��ʾ�����ı�

%�������.��Ⱥ�����
