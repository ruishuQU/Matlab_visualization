%��ָͬ�����������ļ���
clear                                  %�������
x0=1;                                  %���޺�����
syms x n                               %������ű���
fn=(x^(n+1)-(n+1)*x+n)/(x-1)^2         %���ź���
l=limit(fn,x,x0)                       %���ż���
simplify(l)                            %����
fn=inline(fn);                         %���ź���ת��Ϊ���ߺ���

x=0.5:0.01:1.5;                        %�Ա�������
nm=6;                                  %�������
n=1:nm;                                %��������
[N,X]=meshgrid(n,x);                   %�������Ա�������
figure                                 %����ͼ�δ���
plot(x,fn(N,X),'LineWidth',2)          %��������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf_n','FontSize',16)         %��������
title('��ָͬ�����������ļ���','FontSize',16)%�ӱ���
grid on                                %������
legend([repmat('\itn\rm=',length(n),1),num2str(n')],2)%��ͼ��
l=subs(l,'n',n);                       %�������滻Ϊ��������
hold on                                %����ͼ��
plot(x0,l,'or','LineWidth',2)          %�����޵�
text(x0*ones(1,nm),l,num2str(l'),'FontSize',16)%��Ǽ���ֵ

%�������.��Ⱥ�����
