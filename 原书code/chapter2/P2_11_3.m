%������ĸ������ļ���
clear                                  %�������
rand('seed',0)                         %�������������
n=input('���������n����(����2��10):');%������������
% n=2;                                   %�����ο�ֵ
% n=10;                                  %�����ο�ֵ
a=rand(1,n);                           %�����
syms x                                 %������ű���
fn=prod(x+a)^(1/n)-x                   %���ź���
l=limit(fn,x,inf)                      %���ż���
l=double(l)                            %��Ϊ˫������
ll=sum(a)/n                            %��ֵ����

fn=inline(fn);                         %ת��Ϊ���ߺ���
xm=100;                                %��������
xx=0:0.1:xm;                           %�Ա�������
figure                                 %����ͼ�δ���
plot(xx,fn(xx),'LineWidth',2)           %������
grid on                                %������
title('������ĸ������ļ���','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf_n','FontSize',16)         %��������
hold on                                %��������
plot(xm,l,'o')                         %�����޵�
text(xm,l,num2str(l),'FontSize',16)    %��Ǽ���
%text(0,l-0.1,['\ita_n\rm:',num2str(a,4)],'FontSize',16)%��ʾ����
text(0,l*0.9,num2str(a'),'FontSize',16)%��ʾ����

%�������.��Ⱥ�����
