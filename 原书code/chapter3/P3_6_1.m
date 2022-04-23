%������
clear                                  %�������
a=-1.5:0.5:1.5;                        %��������
xm=3;                                  %��������
x=-xm:0.01:xm;                         %����������
[A,X]=meshgrid(a,x);                   %�����ͺ��������
D=A.*(1-X.^2);                         %�����б�ʽ
D(D<0)=nan;                            %С�������Ϊ����
Y=X+sqrt(D);                           %���������
figure                                 %����ͼ�δ���
plot(x,Y,'LineWidth',2)                %��������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
title('��ͬ������������','FontSize',16)%�ӱ���
grid on                                %������
legend([repmat('\ita\rm=',length(a),1),num2str(a')],4)%ͼ��
Y=X-sqrt(D);                           %���������
hold on                                %��������
plot(x,Y,'LineWidth',2)                %��������
xM=1./sqrt(1+a);                       %��ֵ������
xM(imag(xM)~=0)=nan;                   %������Ϊ����
stem(xM,1./xM,'--')                    %����ֵ����
stem(-xM,-1./xM,'--')                  %����ֵ����
% D=sqrt(-A);                            %�����б�ʽ
% D(imag(D)~=0)=NaN;                     %������Ϊ����
% plot(X,(1+D).*X,'-.','LineWidth',2)    %��������
% plot(X,(1-D).*X,'-.','LineWidth',2)    %��������
a=-0.9:0.1:8;                          %���ܵĳ�������
xM=1./sqrt(1+a);                       %��ֵ������
plot(xM,1./xM,'--','LineWidth',2)      %����ֵ��
plot(-xM,-1./xM,'--','LineWidth',2)    %����ֵ��
axis equal                             %ʹ���������
axis([-xm,xm,-xm,xm])                  %���߷�Χ

%�������.��Ⱥ�����
