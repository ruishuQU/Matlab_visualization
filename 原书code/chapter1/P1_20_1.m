%˫Ŧ��
clear                                  %�������
rm=1;                                  %�������
r=-rm:0.01:rm;                         %��������
[X,Y]=meshgrid(r);                     %�������
Z=(X.^2+Y.^2).^2-(X.^2-Y.^2);          %��������
figure                                 %����ͼ�δ���
contour(X,Y,Z,[0,0],'r')               %����ֵ��
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
ylabel('\ity/a','FontSize',16)         %��������
title('˫Ŧ��','FontSize',16)          %�ӱ���
grid on                                %������
axis equal                             %ʹ���������
r=[-rm,rm];                            %�����յ�����
hold on                                %��������
plot(r,r,'--',-r,r,'--','LineWidth',2) %���ָ���

p=linspace(-pi/4,pi/4);                %��������
r=sqrt(cos(2*p));                      %����
polar(p,r)                             %������������
polar(p,-r)                            %������������
%��ֱ����������
% [x,y]=pol2cart(p,r);                   %������ת��Ϊֱ������
% plot(x,y,-x,y,'LineWidth',2)           %����

%�������.��Ⱥ�����


