%��˫�������뷴���Ǻ����Ĺ�ϵ
clear                                  %�������
xm=4;                                  %��������
x=linspace(-xm,xm,40);                 %�Ա�������
figure                                 %����ͼ�δ���
plot(x,asinh(x),x, -i*asin(i*x),'o','LineWidth',2)%����˫�����Һͷ���������
x=linspace(1,xm,20);                  %�Ա�������
hold on                                %��������
plot(x,acosh(x),'--', x,-i*acos(x),'s',...
    x,-acosh(x),'--', x,i*acos(x),'s','LineWidth',2)%�����������Һͷ���������
title('��˫�����Һͷ�˫�����Һ����뷴���Һͷ����Һ����Ĺ�ϵ','FontSize',16)%�ӱ���
grid on                                %������
text(-xm,0,'Ȧ�ͷ��α�ʾ�����Ǻ���','FontSize',16)%��˵��
x=linspace(-1,1,40);                   %�Ա�������
figure                                 %����ͼ�δ���
plot(x,atanh(x),x,-i*atan(i*x),'o','LineWidth',2)%����˫�����кͷ���������
x=linspace(1,xm,40);                   %�Ա�������
hold on                                %��������
plot(x,acoth(x),'--',x,i*acot(i*x),'s',...
    -x,-acoth(x),'--',-x,-i*acot(i*x),'s','LineWidth',2)%����˫�����кͷ���������
title('��˫�����кͷ�˫�����к����뷴���кͷ����к����Ĺ�ϵ','FontSize',16)%�ӱ���
grid on                                %������
text(-xm,0,'Ȧ�ͷ��α�ʾ�����Ǻ���','FontSize',16)%��˵��

%�������.��Ⱥ�����
