%��Բ��
clear                                  %�������
b=0.5:0.5:2;                           %�ݰ�������
t=linspace(0,2*pi);                    %�α�������
[B,T]=meshgrid(b,t);                   %�ݰ���Ͳα�������
X=cos(T);                              %���������
Y=B.*sin(T);                           %���������
figure                                 %����ͼ�δ���
plot(X,Y,'LineWidth',2)                %��������
legend([repmat('\itb/a\rm=',length(b),1),num2str(b')])%ͼ��
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
ylabel('\ity/a','FontSize',16)         %��������
title('��Բ����','FontSize',16)        %�ӱ���
grid on                                %������
axis equal                             %ʹ���������
%���α�������
% x=-1:0.1:1;                            %����������
% [B,X]=meshgrid(b,x);                   %�ݰ���ͺ��������
% Y=B.*sqrt(1-X.^2);                     %���������
% hold on                                %��������
% plot(X,Y,'+','LineWidth',2)            %����������
% plot(X,-Y,'+','LineWidth',2)           %����������

%�������.��Ⱥ�����
