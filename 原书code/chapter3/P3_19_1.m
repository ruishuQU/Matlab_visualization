%��Բ�������̺͵���
clear                                  %�������
syms t b                               %������ű���
x=cos(t);                              %���ź�����
y=b*sin(t);                            %����������
dx_dt=diff(x)                          %x��t�ķ��ŵ���dx/dt
dy_dt=diff(y)                          %y��t�ķ��ŵ���dy/dt
dy_dx=dy_dt/dx_dt                      %y��x�ķ��ŵ���dy/dx
d2y_dxdt=diff(dy_dx)                   %dy/dx��t�ķ��ŵ���d2y/dxdt

dfx=inline(dx_dt);                     %dx/dt�����ߺ���
dfy=inline(dy_dt);                     %dy/dt�����ߺ���
d2fy=inline(d2y_dxdt);                 %d2y/dxdt�����ߺ���
t=linspace(-pi,pi);                    %��������
b=0.5:0.5:2;                           %�ݰ�������
[B,T]=meshgrid(b,t);                   %�������ݰ������
dX=dfx(T);                             %dx/dt��ֵ
dY=dfy(B,T);                           %dy/dt��ֵ
figure                                 %����ͼ�δ���
subplot(2,1,1)                         %ȡ��ͼ
plot(t,dY./dX,'-+','LineWidth',2)      %��������
legend([repmat('\itb/a\rm=',length(b),1),num2str(b')],4)%ͼ��
title('��Բ������仯�ĵ���','FontSize',16)%�ӱ���
grid on                                %������
xlabel('\itt','FontSize',16)           %�Ӻ�����
ylabel('\ity\prime','FontSize',16)     %��������
axis([-pi,pi,-3,3])                    %���÷�Χ
fx=inline(x);                          %x�����ߺ���
fy=inline(y);                          %y�����ߺ���
X=fx(T);                               %x��ֵ
Y=fy(B,T);                             %y��ֵ
dt=t(2)-t(1);                          %���
dX=diff(X)/dt;                         %��x��t����ֵ����
dX=[dX(1,:);(dX(1:end-1,:)+dX(2:end,:))/2;dX(end,:)];%��ƽ��ֵ
dY=diff(Y)/dt;                         %����
dY=[dY(1,:);(dY(1:end-1,:)+dY(2:end,:))/2;dY(end,:)];%��ƽ��ֵ
dY_dX=dY./dX;                          %����ֵ����
hold on                                %��������
plot(t,dY_dX,'o','LineWidth',2)        %��������
text(-pi,0,'�Ӻű�ʾ������,Ȧ��ʾ��ֵ��.','FontSize',16)%��˵��

d2Y=d2fy(B,T);                         %d2y/dxdt��ֵ
subplot(2,1,2)                         %ȡ��ͼ
plot(t,d2Y./dX,'-+','LineWidth',2)     %��������
legend([repmat('\itb/a\rm=',length(b),1),num2str(b')])%ͼ��
title('��Բ������仯�Ķ��׵���','FontSize',16)%�ӱ���
grid on                                %������
xlabel('\itt','FontSize',16)           %�Ӻ�����
ylabel('\ity\prime\prime','FontSize',16)%��������
axis([-pi,pi,-3,3])                    %���÷�Χ
d2Y=diff(dY_dX)/dt;                    %����
d2Y=[d2Y(1,:);(d2Y(1:end-1,:)+d2Y(2:end,:))/2;d2Y(end,:)];%��ƽ��ֵ
d2Y_dX2=d2Y./dX;                       %����ֵ����
hold on                                %��������
plot(t,d2Y_dX2,'o','LineWidth',2)      %��������
text(-pi,0,'�Ӻű�ʾ������,Ȧ��ʾ��ֵ��.','FontSize',16)%��˵��

x=fx(t);                               %x��ֵ
x(t<0)=NaN;                            %����С��0�ĺ������Ϊ����
figure                                 %����ͼ�δ���
subplot(2,1,1)                         %ȡ��ͼ
plot(x,dY./dX,'LineWidth',2)           %��������
legend([repmat('\itb/a\rm=',length(b),1),num2str(b')])%��ͼ��
title('��Բ�������仯�ĵ���','FontSize',16)%�ӱ���
grid on                                %������
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
ylabel('\ity\prime','FontSize',16)     %��������
axis([-1,1,-3,3])                      %���÷�Χ
subplot(2,1,2)                         %ȡ��ͼ
plot(x,d2Y./dX,'LineWidth',2)          %��������
legend([repmat('\itb/a\rm=',length(b),1),num2str(b')])%��ͼ��
title('��Բ�������仯�Ķ��׵���','FontSize',16)%�ӱ���
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
ylabel('\ity\prime\prime','FontSize',16)%��������
axis([-1,1,-3,0])                      %���÷�Χ
grid on                                %������

%�������.��Ⱥ�����
