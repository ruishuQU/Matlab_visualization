%���Ǻ������ʽ����֤
clear                                  %�������
xm=4;                                  %��������
x=-xm:0.1:xm;                          %�Ա�������
y=-2:2;                                %��������
[X,Y]=meshgrid(x,y);                   %�Ա����Ͳ�������
figure                                 %����ͼ�δ���
plot(x,sin(X+Y),'.-','LineWidth',2)    %����ʽ���������
hold on                                %��������
plot(x,sin(X).*cos(Y)+cos(X).*sin(Y),'o','LineWidth',2)%����ʽ�ұ�������
title('�͵����Һ����ĺ��ʽ','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
grid on                                %������
axis tight                             %����
legend([repmat('\ity\rm=',length(y),1),num2str(y')])%ͼ��
text(-xm,0,'���ʾ��ߵĺ���,Ȧ��ʾ�ұߵĺ���.','FontSize',16)%��˵��
figure                                 %����ͼ�δ���
plot(x,cos(X-Y),'.-','LineWidth',2)    %����ʽ���������
hold on                                %��������
plot(x,cos(X).*cos(Y)+sin(X).*sin(Y),'o','LineWidth',2)%����ʽ�ұ�������
title('������Һ����ĺ��ʽ','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
grid on                                %������
axis tight                             %����
legend([repmat('\ity\rm=',length(y),1),num2str(y')])%ͼ��
text(-xm,0,'���ʾ��ߵĺ���,Ȧ��ʾ�ұߵĺ���.','FontSize',16)%��˵��

syms x y                               %������ű���
z=sin(x+y)                             %���ʽ�����
expand(z)                              %չ��
z=sin(x)*cos(y)+cos(x)*sin(y)          %���ʽ���ұ�
simplify(z)                            %����
z=cos(x-y)                             %���ʽ�����
expand(z)                              %չ��
z=cos(x)*cos(y)+sin(x)*sin(y)          %���ʽ���ұ�
simplify(z)                            %����

%�������.��Ⱥ�����
