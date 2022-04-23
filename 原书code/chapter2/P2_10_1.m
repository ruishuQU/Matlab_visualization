%����η��ĸ������ļ���
clear                                  %�������
syms x n                               %������ű���
fn=((1+x)^(1/n)-1)/x                   %����
l=limit(fn,x,0)                        %���ż���
fn=inline(fn);                         %���ź���ת��Ϊ���ߺ���

xm=1;                                  %��������
x=-xm:0.01:xm;                         %�Ա�������
nm=3;                                  %�������
n=-nm:nm;                              %��������
[N,X]=meshgrid(n,x);                   %�������Ա�������
figure                                 %����ͼ�δ���
plot(x,fn(N,X),'LineWidth',2)          %��������
title('����η��ĸ������ļ���','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf_n','FontSize',16)         %��������
legend([repmat('\itn\rm=',length(n),1),num2str(n')])%��ͼ��
grid on                                %������
l=subs(l,'n',n);                       %�������滻Ϊ��������
hold on                                %����ͼ��
plot(0,l,'or','LineWidth',2)           %�����޵�
text(0*ones(size(n)),l,num2str(l',4),'FontSize',16)%��Ǽ���ֵ
axis([-xm,xm,-3,3])                    %�������߷�Χ

%�������.��Ⱥ�����
