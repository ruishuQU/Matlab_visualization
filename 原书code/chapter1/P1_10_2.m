%˫���������ʽ����֤
clear                                  %�������
xm=2;                                  %��������
x=-xm:0.1:xm;                          %�Ա�������
y=-2:2;                                %��������
[X,Y]=meshgrid(x,y);                   %�Ա����Ͳ�������
figure                                 %����ͼ�δ���
plot(x,sinh(X-Y),'.-','LineWidth',2)   %����ʽ���������
hold on                                %��������
plot(x,sinh(X).*cosh(Y)-cosh(X).*sinh(Y),'o','LineWidth',2)%����ʽ�ұ�������
title('���˫�����ҵĺ��ʽ','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
grid on                                %������
axis tight                             %����
text(-xm,10,'���ʾ��ߵĺ���,Ȧ��ʾ�ұߵĺ���.','FontSize',16)%��˵��
legend([repmat('\ity\rm=',length(y),1),num2str(y')],4)%ͼ��

figure                                 %����ͼ�δ���
plot(x,cosh(X+Y),'.-','LineWidth',2)   %����ʽ���������
hold on                                %��������
plot(x,cosh(X).*cosh(Y)+sinh(X).*sinh(Y),'o','LineWidth',2)%����ʽ�ұ�������
title('�͵�˫�����ҵĺ��ʽ','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
grid on                                %������
axis tight                             %����
text(-xm,20,'���ʾ��ߵĺ���,Ȧ��ʾ�ұߵĺ���.','FontSize',16)%��˵��
legend([repmat('\ity\rm=',length(y),1),num2str(y')])%ͼ��

syms x y                               %������ű���
z=sinh(x-y)                            %���ʽ�����
expand(z)                              %չ��
z=sinh(x)*cosh(y)-cosh(x)*sinh(y)      %���ʽ���ұ�
simplify(z)                            %����
z=cosh(x+y)                            %���ʽ�����
expand(z)                              %չ��
z=cosh(x)*cosh(y)+sinh(x)*sinh(y)      %���ʽ���ұ�
simplify(z)                            %����

%�������.��Ⱥ�����
