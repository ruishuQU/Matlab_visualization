%���ź���
clear                                  %�������
xm=5;                                  %����Ա���
x=-xm:0.01:xm;                         %�Ա�������
y=sign(x);                             %��������
y(x==0)=nan;                           %���Ϊ����
figure                                 %����ͼ�δ���
plot(x,y,'LineWidth',2)                %����
hold on                                %��������
plot(0,1,'o',0,-1,'o')                 %��Ȧ
plot(0,0,'.','MarkerSize',24)          %����
title('���ź���','FontSize',16)        %�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
grid on                                %������
axis([-xm,xm,-2,2])                    %���߷�Χ

%�������.��Ⱥ�����
