%˫����˫�������ļ���
rand('seed',0)                         %�������������
clear                                  %�������
x0=0;                                  %���޵ĺ�����
syms x m n a b                         %������ű���
fnm=((1+a*x)^(1/m)*(1+b*x)^(1/n)-1)/x  %���ź���
l=limit(fnm,x,x0)                      %���ż���
a=rand(1);                             %���ȡaֵ
b=rand(1);                             %���ȡbֵ
fnm=inline(fnm)                        %���ź���ת��Ϊ���ߺ���
n=input('����������nֵ֮(����3):');   %������������
%n=3;                                   %�����ο�ֵ
xm=1;                                  %��������
x=-xm:0.01:xm;                         %�Ա�������
mm=6;                                  %�������
m=1:mm;                                %��������
[M,X]=meshgrid(m,x);                   %�������Ա�������
Fnm=fnm(a,b,M,n,X);                    %����ֵ
figure                                 %����ͼ�δ���
plot(x,Fnm,'LineWidth',2)              %��������
title(['˫����˫�������ļ���(\itn\rm=',num2str(n),')'],'FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf_n_m','FontSize',16)       %��������
legend([repmat('\itm\rm=',length(m),1),num2str(m')])%��ͼ��
grid on                                %������
ll=subs(l,{'a','b','m','n'},{a,b,m,n});%�������滻Ϊ��������
hold on                                %����ͼ��
plot(x0,ll,'or','LineWidth',2)         %�����޵�
text(x0*ones(size(m)),ll,num2str(ll'),'FontSize',16)%��Ǽ���ֵ
text(-xm,min(Fnm(:)),['\ita\rm=',num2str(a),',\itb\rm=',num2str(b)],...
    'FontSize',16)                     %��ǲ���
Fnm=fnm(a,b,n,M,X);                    %����ֵ
figure                                 %����ͼ�δ���
plot(x,Fnm,'LineWidth',2)              %��������
title(['˫����˫�������ļ���(\itm\rm=',num2str(n),')'],'FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf_n_m','FontSize',16)       %��������
legend([repmat('\itn\rm=',length(m),1),num2str(m')])%��ͼ��
grid on                                %������
ll=subs(l,{'a','b','m','n'},{a,b,n,m});%�������滻Ϊ��������
hold on                                %����ͼ��
plot(x0,ll,'or','LineWidth',2)         %�����޵�
text(x0*ones(size(m)),ll,num2str(ll',4),'FontSize',16)%��Ǽ���ֵ
text(-xm,min(Fnm(:)),['\ita\rm=',num2str(a),',\itb\rm=',num2str(b)],...
    'FontSize',16)                     %��ǲ���

%�������.��Ⱥ�����
