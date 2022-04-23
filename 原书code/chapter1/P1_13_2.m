%˫������
clear                                  %�������
b=0.25:0.25:1.25;                      %���������
t=linspace(-3*pi/7,3*pi/7);            %��������
[B,T]=meshgrid(b,t);                   %�����Ͳ�������
X=sec(T);                              %���������
Y=B.*tan(T);                           %���������
figure                                 %����ͼ�δ���
plot(X,Y,'LineWidth',2)                %���ұ�������
hold on                                %��������
plot(-X,Y,'LineWidth',2)               %�����������
legend([repmat('\itb/a\rm=',length(b),1),num2str(b')],0)%ͼ��
title('˫������','FontSize',16)        %�ӱ���
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
ylabel('\ity/a','FontSize',16)         %��������
grid on                                %������
axis equal                             %ʹ���������
pause                                  %��ͣ
t=-2:0.1:2;                            %��������
[B,T]=meshgrid(b,t);                   %�����Ͳ�������
X=cosh(T);                             %���������
Y=B.*sinh(T);                          %���������
plot(X,Y,'+','LineWidth',2)            %���ұߺ���������
plot(-X,Y,'+','LineWidth',2)           %����ߺ���������
text(-6,-5,'ʵ�߱�ʾ���Ǻ����Ĳ�������,�Ӻű�ʾ˫��������������.',...
    'FontSize',16)                     %��˵��
pause                                  %��ͣ
x=1:0.1:4;                             %����������
[B,X]=meshgrid(b,x);                   %�����ͺ��������
Y=B.*sqrt(X.^2-1);                     %���������
plot(X,Y,'x','LineWidth',2)            %�����Ϻ���������
plot(X,-Y,'x','LineWidth',2)           %�����º���������
plot(-X,Y,'x','LineWidth',2)           %�����Ϻ���������
plot(-X,-Y,'x','LineWidth',2)          %�����º���������

%�������.��Ⱥ�����
