%����������
clear                                  %�������
x0=3;                                  %���޵ĺ�����
syms x                                 %������ű���
f=(sqrt(x+13)-2*sqrt(x+1))/(x^2-9)     %���ź���
l=limit(f,x,x0)                        %���ż���
l=double(l)                            %��Ϊ��ֵ

f=inline(f);                           %���ź���ת��Ϊ���ߺ���
x=x0-1:0.01:x0+1;                      %�Ա�������
figure                                 %����ͼ�δ���
plot(x,f(x),'LineWidth',2)             %������
title('����������','FontSize',16)      %�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf','FontSize',16)           %��������
grid on                                %������
hold on                                %��������
plot(x0,l,'o')                         %������
text(x0,l,num2str(l),'FontSize',16)    %��Ǽ���

%�������.��Ⱥ�����
