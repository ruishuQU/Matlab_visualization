%���������Ҽ��޵ĺ����ļ�
function fun(f,x0)
l1=limit(f,'x',x0,'Left')              %��������
l1=double(l1)                          %��Ϊ��ֵ
l2=limit(f,'x',x0,'Right')             %�����Ҽ���
l2=double(l2)                          %��Ϊ��ֵ

x=x0-1:0.01:x0+1;                      %�Ա�������
x(x==x0)=nan;                          %�����м��޵������Ϊ����
f=inline(f);                           %ת��Ϊ���ߺ���
figure                                 %����ͼ�δ���
plot(x,f(x),'LineWidth',2)             %������
title('���������Ҽ���','FontSize',16)  %�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf','FontSize',16)           %��������
grid on                                %������
hold on                                %��������
plot(x0,l1,'o',x0,l2,'o')              %������
text([x0,x0],[l1,l2],num2str([l1;l2]),'FontSize',16)%��Ǽ���

%�������.��Ⱥ�����
