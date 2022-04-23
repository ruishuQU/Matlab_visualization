%�����ٵ��������ļ���
clear                                  %�������
syms x n a                             %������ű���
fn=(x^n-a^n-n*a^(n-1)*(x-a))/(x-a)^2   %���ź���
l=limit(fn,x,a)                        %���ż���
fn=(x^n-1-n*(x-1))/(x-1)^2             %���ź���
l=limit(fn,x,1)                        %���ż���
fn=inline(fn);                         %���ź���ת��Ϊ���ߺ���

xm=2;                                  %��������
x=0:0.01:xm;                           %�Ա�������
nm=6;                                  %�������
n=1:nm;                                %��������
[N,X]=meshgrid(n,x);                   %�������Ա�������
figure                                 %����ͼ�δ���
plot(x,fn(N,X),'LineWidth',2)          %��������
title('Լ�����������ļ���','FontSize',16)%�ӱ���
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
ylabel('\itf_n/a^{n\rm-2}','FontSize',16)%��������
legend([repmat('\itn\rm=',length(n),1),num2str(n')],2)%��ͼ��
grid on                                %������
l=subs(l,'n',n);                       %�������滻Ϊ��������
hold on                                %����ͼ��
plot(1,l,'or','LineWidth',2)           %�����޵�
text(ones(size(n)),l,num2str(l',4),'FontSize',16)%��Ǽ���ֵ

%�������.��Ⱥ�����
