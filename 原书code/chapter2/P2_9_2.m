%������������Զ���ļ���
clear                                  %�������
syms x                                 %������ű���
f=x*(sqrt(x^2+2*x)-2*sqrt(x^2+x)+x)    %���ź���
l=limit(f,x,inf)                       %���ż���
l=double(l)                            %��Ϊ��ֵ

f=inline(f);                           %���ź���ת��Ϊ���ߺ���
xm=1000;                               %��������
x=1:0.1:xm;                            %�Ա�������
figure                                 %����ͼ�δ���
plot(x,f(x),'LineWidth',2)             %������
title('������������Զ���ļ���','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
grid on                                %������
hold on                                %��������
plot(xm,l,'o')                         %������
text(xm,l,num2str(l),'FontSize',16)    %��Ǽ���

%�������.��Ⱥ�����
