%��֤��ǹ�ʽ
clear                                  %�������
a=-360:10:360;                         %��������
x=a*pi/180;                            %��������
figure                                 %����ͼ�δ���
subplot(2,1,1)                         %ѡ��ͼ
plot(x,cos(x/2).^2,'x-',x,(1+cos(x))/2,'o','LineWidth',2)%����������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('cos^2\itx\rm/2','FontSize',16) %��������
title('��֤��ǵ����Һ���ƽ����ʽ','FontSize',16)%�ӱ���
legend('��ǵ����Һ���ƽ��','չ��ʽ',0) %��ͼ��
grid on                                %������
y1=cos(x/2);                           %��ǵ����Һ���
y2=sqrt((1+cos(x))/2);                 %չ��ʽ
subplot(2,1,2)                         %ѡ��ͼ
plot(x,y1,'x-',x,y2,'o','LineWidth',2) %����������
l=x<-pi|x>pi;                          %�߼�ֵ
y2(l)=-y2(l);                          %�߼����߸�Ϊ��ֵ
hold on                                %��������
plot(x,y2,'sr','LineWidth',2)          %����������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('cos\itx\rm/2','FontSize',16)   %��������
title('��֤��ǵ����Һ�����ʽ','FontSize',16)%�ӱ���
grid on                                %������
legend('��ǵ����Һ���','ȡ���ŵ�չ��ʽ','���Ƿ��ŵ�չ��ʽ',0)%��ͼ��

%�������.��Ⱥ�����
