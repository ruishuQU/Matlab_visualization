%��֤���Ǻ����ĺͲ����ʽ
clear                                  %�������
a=-360:10:360;                         %��������
x=a*pi/180;                            %��������
y=pi/3;                                %ȡĳһ�Ƕ�
z1=cos(x)+cos(y);                      %���ʽ�����
z2=2*cos((x-y)/2).*cos((x+y)/2);       %���ʽ���ұ�
figure                                 %����ͼ�δ���
subplot(2,1,1)                         %ѡ��ͼ
plot(x,z1,'*-',x,z2,'o','LineWidth',2) %����������
title('��֤���Һ����ĺͲ����ʽ','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
legend('���','�ұ�')                  %��ͼ��
text(0,0,['\ity\rm=',num2str(y)],'FontSize',16)%��˵��
grid on                                %������
subplot(2,1,2)                         %ѡ��ͼ
plot(x,sin(x)+sin(y),'*-',x,2*cos((x-y)/2).*sin((x+y)/2),'o',...
    'LineWidth',2)                     %����������
title('��֤���Һ����ĺͲ����ʽ','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
legend('���','�ұ�')                  %ͼ����
text(0,0,['\ity\rm=',num2str(y)],'FontSize',16)%��˵��
grid on                                %������

%�������.��Ⱥ�����
