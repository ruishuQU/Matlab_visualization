%���Ǻ���
clear                                  %�������
a=-360:360;                            %��������
x=a*pi/180;                            %��������
figure                                 %����ͼ�δ���
plot(a,sin(x),a,cos(x),'--','LineWidth',2)%����������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
title('���Һ����Һ�������','FontSize',16)%�ӱ���
grid on                                %������
legend('sin','cos')                    %ͼ��

figure                                 %����ͼ�δ���
plot(a,tan(x),a,cot(x),'--','LineWidth',2)%����������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
title('���к����к�������','FontSize',16)%�ӱ���
grid on                                %������
legend('tan','cot')                    %ͼ��
ym=10;                                 %���������
axis([-360,360,-ym,ym])                %�������߷�Χ

ys=sec(x);                             %�����
ys(abs(ys)>ym)=NaN;                    %����ֵ̫��ĺ���ֵ��Ϊ����
yc=csc(x);                             %���к���
yc(abs(yc)>ym)=NaN;                    %����ֵ̫��ĺ���ֵ��Ϊ����
figure                                 %����ͼ�δ���
plot(a,ys,a,yc,'--','LineWidth',2)     %����������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
title('�������������','FontSize',16)%�ӱ���
grid on                                %������
legend('sec','csc')                    %ͼ��
axis([-360,360,-ym,ym])                %�������߷�Χ

%�������.��Ⱥ�����
