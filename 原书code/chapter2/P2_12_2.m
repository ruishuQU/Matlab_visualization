%�������Һ����͵��ƺ���
clear                                  %�������
xm=5;                                  %����Ա���
x=-xm:0.02:xm;                         %�Ա�������
y=sin(pi./x);                          %����
figure                                 %����ͼ�δ���
plot(x,y,'LineWidth',2)                %����
title('�������Һ���','FontSize',16)    %�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf','FontSize',16)           %��������
grid on                                %������
figure                                 %����ͼ�δ���
plot(x,x.*y,x,x,'--',x,-x,'--','LineWidth',2)%����
title('���ȵ��Ƶķ������Һ���','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf','FontSize',16)           %��������
grid on                                %������
hold on                                %��������
plot([-xm,xm],[pi,pi],'-.','LineWidth',2)%��������
figure                                 %����ͼ�δ���
plot(x,y./x,x,1./x,'--',x,-1./x,'--','LineWidth',2)%����
title('���ȵ��Ƶķ������Һ���','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf','FontSize',16)           %��������
grid on                                %������
axis([-xm,xm,-5,5])                    %�������߷�Χ

%�������.��Ⱥ�����
