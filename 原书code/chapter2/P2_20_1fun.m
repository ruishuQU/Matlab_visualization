%�����ͽ����ߵĺ����ļ�
function fun(f,t)
syms x                                 %������ű���
k1=limit(f/x,x,Inf)                    %����б��
b1=limit(f-k1*x,x,Inf)                 %���Žؾ�
k2=limit(f/x,x,-Inf)                   %����б��
b2=limit(f-k2*x,x,-Inf)                %���Žؾ�

xm=4;                                  %��������
x=-xm:0.1:xm;                          %�Ա�������
f=inline(f);                           %���ź���ת��Ϊ���ߺ���
%y=f(x);                                %��������
figure                                 %����ͼ�δ���
plot(x,f(x),'LineWidth',2)             %������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf','FontSize',16)           %��������
title([t,'�����ͽ�����'],'FontSize',16)%�ӱ���
grid on                                %������
y1=double(k1*x+b1);                    %�����ߵ�������
y2=double(k2*x+b2);                    %�����ߵ�������
hold on                                %��������
plot(x,y1,'--r',x,y2,'--m','LineWidth',2)%��������

%�������.��Ⱥ�����
