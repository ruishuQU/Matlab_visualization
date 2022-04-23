%��֤���Ǻ����Ļ����Ͳʽ
clear                                  %�������
a=-360:10:360;                         %��������
x=a*pi/180;                            %��������
y=(0:3)/6*pi;                          %ȡ�Ƕ�����
[X,Y]=meshgrid(x,y);                   %������Ϊ����
Z=cos(X).*cos(Y);                      %���ʽ�����
Z1=cos(X-Y);                           %���ʽ�ұߵĵ�1����
Z2=cos(X+Y);                           %���ʽ�ұߵĵ�2����
figure                                 %����ͼ�δ���
subplot(2,1,1)                         %ѡ��ͼ
plot(x,Z,'*-','LineWidth',2)           %������������
hold on                                %��������
plot(x,(Z1+Z2)/2,'o','LineWidth',2)    %������������
title('��֤���Һ����Ļ����Ͳʽ','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
legend(num2str(y'))                    %��ͼ��
text(-2*pi,0,'�Ǻű�ʾ��ߣ�Բ��ʾ�ұ�','FontSize',16)%��˵��
grid on                                %������
subplot(2,1,2)                         %ѡ��ͼ
plot(x,sin(X).*sin(Y),'*-','LineWidth',2)%������������
hold on                                %��������
plot(x,(Z1-Z2)/2,'o','LineWidth',2)    %������������
title('��֤���Һ����Ļ����Ͳʽ','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
grid on                                %������
legend([repmat('\ity\rm=',length(y),1),num2str(y')])%����ͼ��
text(-2*pi,0,'�Ǻű�ʾ��ߣ�Բ��ʾ�ұ�','FontSize',16)%��˵��

