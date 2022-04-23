%�������Ļ���ָ�������ļ���
clear                                  %�������
syms x a                               %������ű���
f=(a^x-1)/x                            %���ź���
l=limit(f,x,0)                         %���ż���

f=inline(f);                           %���ź���ת��Ϊ���ߺ���
xm=0.5;                                %��������
x=-xm:0.01:xm;                         %�Ա�������
a=0.5:0.5:3;                           %��������
[A,X]=meshgrid(a,x);                   %�������Ա�������
F=f(A,X);                              %��������
F(imag(F)~=0)=nan;                     %������Ϊ����
figure                                 %����ͼ�δ���
plot(x,F,'LineWidth',2)                %��������
title('�������ı�ָ�������ļ���','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf','FontSize',16)           %��������
legend([repmat('\ita\rm=',length(a),1),num2str(a')],2)%��ͼ��
grid on                                %������
l=subs(l,'a',a);                       %�������滻Ϊ��������
hold on                                %����ͼ��
plot(0,l,'or','LineWidth',2)           %�����޵�
text(zeros(size(l)),l,num2str(l'),'FontSize',16)%��Ǽ���ֵ

%�������.��Ⱥ�����
