%�������Ķ������
clear                                  %�������
syms x                                 %������ű���
f=(x^2-1)/(2*x^2-x-1)                  %�γɷ��ź���
l1=limit(f,x,0)                        %����ż���
l1=double(l1)                          %��Ϊ��ֵ
l2=double(limit(f,x,1))                %����ż���
l2=double(l2)                          %��Ϊ��ֵ
l3=limit(f,x,inf)                      %����ż���
l3=double(l3)                          %��Ϊ��ֵ
l4=limit(f,x,-inf)                     %����ż���
l4=double(l4)                          %��Ϊ��ֵ
xm=4;                                  %��������
x=-xm:0.01:xm;                         %�Ա�������
f=inline(f);                           %���ߺ���
figure                                 %����ͼ�δ���
plot(x,f(x),'LineWidth',2)             %������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
title('�������Ķ������','FontSize',16)%�ӱ���
grid on                                %������
axis([-xm,xm,-5,5])                    %�������߷�Χ
x=[0,1,xm,-xm];                        %���޺�����
y=[l1,l2,l3,l4];                       %����ֵ
hold on                                %��������
plot(x,y,'o')                          %�����޵�
text(x,y,num2str(y'),'FontSize',16)    %��Ǽ���
plot([-xm,xm],[l4,l3],'--','LineWidth',2)%��������

%�������.��Ⱥ�����
