%��������������Զ���ļ��޵ĺ����ļ�
function fun(f,x0)
l1=limit(f,'x',-Inf)                   %������Զ���ķ��ż���
l1=double(l1)                          %��Ϊ��ֵ
l2=limit(f,'x',Inf)                    %������Զ���ķ��ż���
l2=double(l2)                          %��Ϊ��ֵ

xm=10;                                 %��������
x=-xm:0.1:xm;                          %�Ա�������
f=inline(f);                           %ת��Ϊ���ߺ���
figure                                 %����ͼ�δ���
plot(x,f(x),'LineWidth',2)             %������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf','FontSize',16)           %��������
title('��������������Զ���ļ���','FontSize',16)%�ӱ���
grid on                                %������
hold on                                %��������
plot(-xm,l1,'o',xm,l2,'o')             %������
text([-xm,xm],[l1,l2],num2str([l1;l2]),'FontSize',16)%��Ǽ���

%�������.��Ⱥ�����
