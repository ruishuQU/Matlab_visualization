%˫����
clear                                  %�������
b=input('b/a=');                       %�������������
%b=0.8;                                 %�����ο�ֵ
%b=1.2;                                 %�����ο�ֵ
%b=1;                                   %�����ο�ֵ
xm=4;                                  %��������
x=1:0.1:xm;                            %����������
y=b*sqrt(x.^2-1);                      %����������
figure                                 %����ͼ�δ���
plot(x,y,'LineWidth',2)                %�����Ϻ�������
hold on                                %��������
plot(x,-y,'LineWidth',2)               %�����º�������
plot(-x,y,'LineWidth',2)               %�����Ϻ�������
plot(-x,-y,'LineWidth',2)              %�����º�������
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
ylabel('\ity/a','FontSize',16)         %��������
title('˫����','FontSize',16)          %�ӱ���
grid on                                %������
axis equal                             %ʹ���������
text(0,0,['\itb/a\rm=',num2str(b)],'FontSize',16)%��ǲ���
x=-xm:0.1:xm;                          %����������
plot(x,b*x,'-.',x,-b*x,'-.','LineWidth',2)%��������
%���α�������
% t=-2:0.1:2;                            %��������
% x=cosh(t);                             %����������
% y=b*sinh(t);                           %����������
% plot(x,y,'+','LineWidth',2)            %���ұߺ�������
% plot(-x,y,'+','LineWidth',2)           %����ߺ�������

%�������.��Ⱥ�����
