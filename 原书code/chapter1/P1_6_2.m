%�����Ǻ���
clear                                  %�������
x=-1:0.01:1;                           %�Ա�������
figure                                 %����ͼ�δ���
%plot(x,asin(x),x,acos(x),'--','LineWidth',2)%����������
plot(x,asin(x)*180/pi,x,acos(x)*180/pi,'--','LineWidth',2)%����������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
title('�����Һͷ����Һ���','FontSize',16)%�ӱ���
grid on                                %������
legend('asin','acos')                  %ͼ��
hold on                                %��������
plot(x,(asin(x)+acos(x))*180/pi,'-.','LineWidth',2)%������֮��
a=-180:5:180;                          %��������
xx=a*pi/180;                           %��������
plot(sin(xx),a,'+',cos(xx),a,'x','LineWidth',2)%������������

xm=5;                                  %��������
x=-xm:0.01:xm;                         %�Ա�������
figure                                 %����ͼ�δ���
plot(x,atan(x)*180/pi,x,acot(x)*180/pi,'--','LineWidth',2)%����������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
title('�����кͷ����к���','FontSize',16)%�ӱ���
grid on                                %������
legend('atan','acot')                  %ͼ��
hold on                                %��������
plot(x,(atan(x)+acot(x))*180/pi,'-.','LineWidth',2)%������֮��
plot(tan(xx),a,'+',cot(xx),a,'x','LineWidth',2)%������������
axis([-xm,xm,-180,180])                %�������߷�Χ

yas=asec(x);                           %�������
yas(imag(yas)~=0)=nan;                 %������Ϊ����
yac=acsc(x);                           %������
yac(imag(yac)~=0)=nan;                 %������Ϊ����
figure                                 %����ͼ�δ���
plot(x,yas*180/pi,x,yac*180/pi,'--','LineWidth',2)%����������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
title('������ͷ�����','FontSize',16)%�ӱ���
grid on                                %������
legend('asec','acsc',4)                %ͼ��
hold on                                %��������
plot(x,(asec(x)+acsc(x))*180/pi,'-.','LineWidth',2)%������֮��
plot(sec(xx),a,'+',csc(xx),a,'x','LineWidth',2)%������������
axis([-xm,xm,-180,180])                %�������߷�Χ

%�������.��Ⱥ�����
