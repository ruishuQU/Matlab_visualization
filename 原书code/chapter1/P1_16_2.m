%���ƺ���
clear                                  %�������
x=-1:0.005:1;                          %�Ա�������
y0=sqrt(1-x.^2);                       %���ƺ���
y1=sin(pi./x);                         %�����ƺ���
figure                                 %����ͼ�δ���
plot(x,y1,'LineWidth',2)               %����
title('�������Һ���','FontSize',16)    %�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
grid on                                %������
figure                                 %����ͼ�δ���
plot(x,y0.*y1,x,y0,'--',x,-y0,'--','LineWidth',2)%����
title('�����ڵ�λԲ�ڵĺ���','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
grid on                                %������
axis equal                             %ʹ���������

%�������.��Ⱥ�����
