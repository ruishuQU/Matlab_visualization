%������������Ļ���
clear                                  %�������
rm=input('����������:');               %������������
%rm=2;                                  %�����
x=[-rm,rm]                             %����������
y=-rm:rm                               %����������
Y=[y;y]                                %���������
figure                                 %����ͼ�δ���
plot(x,Y,'LineWidth',2)                %��ˮƽֱ����
hold on                                %��������
plot(Y,x,'LineWidth',2)                %����ֱֱ����
axis equal                             %ʹ���������
title('��������','FontSize',16)        %�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������

x=-rm-1:rm+1                           %�º���������
[X,Y]=meshgrid(x,y)                    %�������
figure                                 %����ͼ�δ���
plot(X,Y,'LineWidth',2)                %����ֱ��
hold on                                %��������
plot(X',Y','LineWidth',2)              %��ˮƽ��
plot(X,Y,'o')                          %��Ȧ
%grid on                                %������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
title('��������͵��Լ�����','FontSize',16)%�ӱ���
axis equal                             %ʹ���������
text(X(:),Y(:),num2str(X(:)))          %��ʾ������
text(X(:)+0.15,Y(:),',')               %��ʾ����
text(X(:)+0.2,Y(:),num2str(Y(:)))      %��ʾ������

%�������.��Ⱥ�����
