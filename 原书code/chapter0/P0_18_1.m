%ʸ�����Ĵ�С�ͷ���
clear                                  %�������
xm=2.5;                                %��������
x=-xm:0.1:xm;                          %����������
ym=2;                                  %���������
y=-ym:0.1:ym;                          %����������
[X,Y]=meshgrid(x,y);                   %�������
dY=X.^3+Y.^3;                          %dy����
dX=3*X.*Y.^2;                          %dx����
figure                                 %����ͼ�δ���
quiver(X,Y,dX,dY)                      %����ͷ
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %������
title('ʸ�����Ĵ�С�ͷ���','FontSize',16)%�ӱ���
grid on                                %������
axis equal                             %ʹ���������
D=sqrt(dX.^2+dY.^2);                   %ʸ����С
dY=dY./D;                              %dy����Է���
dX=dX./D;                              %dx����Է���
figure                                 %����ͼ�δ���
quiver(X,Y,dX,dY)                      %���ȳ��ļ�ͷ��ʾ����
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
title('ʸ�����ķ���','FontSize',16)    %�ӱ���
grid on                                %������
axis equal                             %ʹ���������

%�������.��Ⱥ�����
