%���ƺ���
clear                                  %�������
xm=10;                                 %����Ա���
x=-xm:0.01:xm;                         %�Ա�������
y0=1./(1+x.^2);                        %���ƺ���
y1=cos(pi*x);                          %�����ƺ���
y2=sin(pi*x);                          %�����ƺ���
figure                                 %����ͼ�δ���
plot(x,y0.*y1,x,y0,'--',x,-y0,'--','LineWidth',2)%����
title('���ƺ�����Һ���','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
grid on                                %������

figure                                 %����ͼ�δ���
plot(x,y0.*y2,x,y0,'--',x,-y0,'--','LineWidth',2)%����
title('���ƺ�����Һ���','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
grid on                                %������

%�������.��Ⱥ�����
