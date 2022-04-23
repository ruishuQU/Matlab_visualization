%Բ׶������
clear                                  %�������
e=0:0.25:1.25;                         %ƫ��������
t=linspace(0,2*pi);                    %��������
[E,T]=meshgrid(e,t);                   %ƫ���ʺͼ��Ǿ���
R=1./(1+E.*cos(T));                    %��������
rm=5;                                  %��󼫾�
R(R>rm+2)=NaN;                         %̫��ļ�����Ϊ����
X=R.*cos(T);                           %���������
Y=R.*sin(T);                           %���������
figure                                 %����ͼ�δ���
%polar(T,R)
plot(X,Y,'LineWidth',2)                %��������
legend([repmat('\ite\rm=',length(e),1),num2str(e')])%��ͼ��
xlabel('\itx/p','FontSize',16)         %�Ӻ�����
ylabel('\ity/p','FontSize',16)         %��������
grid on                                %������
title('Բ׶������','FontSize',16)      %�ӱ���
axis equal                             %ʹ���������
axis([-rm,1,-rm+2,rm-2])               %�������߷�Χ

%�������.��Ⱥ�����
