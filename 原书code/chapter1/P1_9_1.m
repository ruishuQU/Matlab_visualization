%���Ǻ�����˫�������Ĺ�ϵ
clear                                  %�������
xm=6;                                  %��������
x=linspace(-xm,xm);                    %�Ա�������
figure                                 %����ͼ�δ���
plot(x,sin(x),x,cos(x),'--','LineWidth',2)%�����Һ���������
hold on                                %��������
plot(x,-i*sinh(i*x),'o',x,cosh(i*x),'s')%��˫�����Һ�˫����������
legend('sin','cos')                    %ͼ��
axis([-xm,xm,-1,1])                    %�������߷�Χ
grid on                                %������
title('���Һ����Һ�����˫�����Һ�˫�����Һ����Ĺ�ϵ','FontSize',16)%�ӱ���
text(-xm,0,'Ȧ�ͷ��α�ʾ˫������','FontSize',16)%��˵��

figure                                 %����ͼ�δ���
plot(x,tan(x),x,cot(x),'--','LineWidth',2)%�����к���������
hold on                                %��������
plot(x,-i*tanh(i*x),'o',x,i*coth(i*x),'s')%��˫�����к�˫����������
legend('tan','cot')                    %ͼ��
axis([-xm,xm,-10,10])                  %�������߷�Χ
grid on                                %������
title('���к����к�����˫�����к�˫�����к����Ĺ�ϵ','FontSize',16)%�ӱ���
text(-xm,0,'Ȧ�ͷ��α�ʾ˫������','FontSize',16)%��˵��

%�������.��Ⱥ�����
