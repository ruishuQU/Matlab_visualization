%�������͵���
clear                                  %�������
syms y                                 %������ű���
x=y^3+3*y;                             %���������ű��ʽ
dx_dy=diff(x)                          %��x��y�ķ��ŵ���
dy_dx=1/dx_dy;                         %��y��x�ķ��ŵ���
d2x_dy2=diff(x,2)                      %��x��y�ķ��Ŷ��׵���
d2y_dx2=-d2x_dy2/dx_dy^3;              %��y��x�ķ��Ŷ��׵���

fx=inline(x);                          %������ת��Ϊ���ߺ���
df=inline(dy_dx);                      %y��x�ķ��ŵ���ת��Ϊ���ߺ���
d2f=inline(d2y_dx2);                   %y��x�ķ��Ŷ��׵���ת��Ϊ���ߺ���
dy=0.1;                                %��������
y=-1:dy:1;                             %����������
x=fx(y);                               %����������
figure                                 %����ͼ�δ���
plot(x,y,x,df(y),'+--',x,d2f(y),'x-.','LineWidth',2)%������
title('�������͵���','FontSize',16)    %�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
grid on                                %������
dx=diff(x)/dy;                         %��x��y����ֵ����
dx=[dx(1),(dx(1:end-1)+dx(2:end))/2,dx(end)];%��ƽ��ֵ
d2x=diff(dx)/dy;                       %��x��y�Ķ�����ֵ����
d2x=[d2x(1),(d2x(1:end-1)+d2x(2:end))/2,d2x(end)];%��ƽ��ֵ
hold on                                %��������
plot(x,1./dx,'o',x,-d2x./dx.^3,'s')    %����ֵ����Ȧ
legend('����\ity','����\it\prime','���׵���\ity\prime\prime',2)%��ͼ��
text(-4,-0.5,'Ȧ��ʾ��ֵ����,���α�ʾ������ֵ����','FontSize',16)%��˵��

%�������.��Ⱥ�����
