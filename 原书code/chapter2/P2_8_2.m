%˫���������ļ���
clear                                  %�������
x0=1;                                  %���޵ĺ�����
syms x m n                             %������ű���
%fnm=m/(1-x^m)-n/(1-x^n)                %���ź���
fnm=(x^m-1)/(x^n-1)                    %���ź���
l=limit(fnm,x,x0)                      %���ż���
fnm=inline(fnm);                       %���ź���ת��Ϊ���ߺ���
n=input('����������nֵ֮(����3):');   %������������
%n=3;                                   %�����ο�ֵ
m=1:6;                                 %��������
xm=2;                                  %��������
x=0:0.01:xm;                           %�Ա�������
[M,X]=meshgrid(m,x);                   %�������Ա�������
figure                                 %����ͼ�δ���
plot(x,fnm(M,n,X),'LineWidth',2)       %��������
title(['˫���������ļ���(\itn\rm=',num2str(n),')'],'FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf_n_m','FontSize',16)       %��������
legend([repmat('\itm\rm=',length(m),1),num2str(m')],2)%��ͼ��
grid on                                %������
ll=subs(l,{'m','n'},{m,n});            %�������滻Ϊ��������
hold on                                %����ͼ��
plot(x0,ll,'or','LineWidth',2)         %�����޵�
text(x0*ones(size(m)),ll,num2str(ll'),'FontSize',16)%��Ǽ���ֵ

figure                                 %����ͼ�δ���
plot(x,fnm(n,M,X),'LineWidth',2)       %��������
title(['˫���������ļ���(\itm\rm=',num2str(n),')'],'FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf_n_m','FontSize',16)       %��������
legend([repmat('\itn\rm=',length(m),1),num2str(m')],2)%��ͼ��
grid on                                %������
ll=subs(l,{'m','n'},{n,m});            %�������滻Ϊ��������
hold on                                %����ͼ��
plot(x0,ll,'or','LineWidth',2)         %�����޵�
text(x0*ones(size(m)),ll,num2str(ll',4),'FontSize',16)%��Ǽ���ֵ

%�������.��Ⱥ�����
