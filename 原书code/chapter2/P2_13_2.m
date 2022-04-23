%˫���Ǻ����ļ���
clear                                  %�������
x0=pi;                                 %���޵ĺ�����
syms x m n                             %������ű���
fnm=sin(m*x)/sin(n*x)                  %���ź���
l=limit(fnm,x,x0)                      %���ż���(�������)
fnm=inline(fnm);                       %���ź���ת��Ϊ���ߺ���
n=input('����������nֵ֮(����2):');    %������������
%n=2;                                   %�����ο�ֵ
x=linspace(x0-pi/3,x0+pi/3);           %�Ա�������
m=-3:3;                                %��������
[M,X]=meshgrid(m,x);                   %�������Ա�������
figure                                 %����ͼ�δ���
plot(x,fnm(M,n,X),'LineWidth',2)       %��������
title(['˫���Ǻ����ļ���(\itn\rm=',num2str(n),')'],'FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf_n_m','FontSize',16)       %��������
legend([repmat('\itm\rm=',length(m),1),num2str(m')])%��ͼ��
grid on                                %������
ll=subs(l,{'m','n'},{m,n});            %�������滻Ϊ��������
hold on                                %����ͼ��
plot(x0,ll,'or','LineWidth',2)         %�����޵�
text(x0*ones(size(m)),ll,num2str(ll'),'FontSize',16)%��Ǽ���ֵ

figure                                 %����ͼ�δ���
plot(x,fnm(n,M,X),'LineWidth',2)       %��������
title(['˫���Ǻ����ļ���(\itm\rm=',num2str(n),')'],'FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf_n_m','FontSize',16)       %��������
legend([repmat('\itn\rm=',length(m),1),num2str(m')])%��ͼ��
grid on                                %������
ll=subs(l,{'m','n'},{n,m});            %�������滻Ϊ��������
hold on                                %����ͼ��
plot(x0,ll,'or','LineWidth',2)         %�����޵�
text(x0*ones(size(m)),ll,num2str(ll',4),'FontSize',16)%��Ǽ���ֵ
axis([x0-pi/3,x0+pi/3,-5,5])           %�������߷�Χ

%�������.��Ⱥ�����
