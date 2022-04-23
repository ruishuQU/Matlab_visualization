%�̲��շ��̺͵���
clear                                  %�������
syms y e                               %������ű���
x=y-e*sin(y);                          %���������ű��ʽ
dx_dy=diff(x)                          %��x��y�ķ��ŵ���
dy_dx=1/dx_dy;                         %��y��x�ķ��ŵ���
d2x_dy2=diff(x,2)                      %��x��y�ķ��Ŷ��׵���
d2y_dx2=-d2x_dy2/dx_dy^3               %��y��x�ķ��Ŷ��׵���

fx=inline(x);                          %������ת��Ϊ���ߺ���
df=inline(dy_dx);                      %y��x�ķ��ŵ���ת��Ϊ���ߺ���
d2f=inline(d2y_dx2);                   %y��x�ķ��Ŷ��׵���ת��Ϊ���ߺ���
y=linspace(-pi,pi);                    %����������
dy=y(2)-y(1);                          %��������
e=0.1:0.2:0.9;                         %��������
[E,Y]=meshgrid(e,y);                   %���������������
X=fx(E,Y);                             %����������
figure                                 %����ͼ�δ���
plot(X,Y,'LineWidth',2)                %��������
title('�̲��շ���','FontSize',16)      %�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
grid on                                %������
axis([-pi,pi,-pi,pi])                  %�������߷�Χ
legend([repmat('\it\epsilon\rm=',length(e),1),num2str(e')],4)%��ͼ��

dY=df(E,Y);                            %��������
figure                                 %����ͼ�δ���
plot(X,dY,'.--','LineWidth',2)         %��������
title('�̲��շ��̵ĵ���','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
grid on                                %������
axis([-pi,pi,0,2])                     %�������߷�Χ
legend([repmat('\it\epsilon\rm=',length(e),1),num2str(e')],0)%��ͼ��
dX=diff(X)/dy;                         %����
dX=[dX(1,:);(dX(1:end-1,:)+dX(2:end,:))/2;dX(end,:)];%��ƽ��ֵ
hold on                                %��������
plot(X,1./dX,'o')                      %����ֵ����Ȧ
text(-pi,0.2,'���ʾ��������,Ȧ��ʾ��ֵ����','FontSize',16)%��˵��

d2Y=d2f(E,Y);                          %���׵�������
figure                                 %����ͼ�δ���
plot(X,d2Y,'.-.','LineWidth',2)        %��������
title('�̲��շ��̵Ķ��׵���','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
grid on                                %������
axis([-pi,pi,-2,2])                    %�������߷�Χ
legend([repmat('\it\epsilon\rm=',length(e),1),num2str(e')],0)%ͼ��
d2X=diff(dX)/dy;                       %����
d2X=[d2X(1,:);(d2X(1:end-1,:)+d2X(2:end,:))/2;d2X(end,:)];%��ƽ��ֵ
hold on                                %��������
plot(X,-d2X./dX.^3,'s')                %����ֵ��������
text(-pi,-1,'���ʾ�������׵���,���α�ʾ��ֵ���׵���','FontSize',16)%��˵��

%�������.��Ⱥ�����
