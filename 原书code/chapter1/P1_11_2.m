%����������
clear                                  %�������
ym=1;                                  %���������
y=0:0.01:ym;                           %����������
a=0.5:0.5:2;                           %�빰������
[A,Y]=meshgrid(a,y);                   %�빰������������
X=A.*sqrt(1-Y);                        %���������
figure                                 %����ͼ�δ���
plot(X,y,-X,y,'LineWidth',2)           %������������
xlabel('\itx/h','FontSize',16)         %�Ӻ�����
ylabel('\ity/h','FontSize',16)         %��������
title('����������','FontSize',16)      %�ӱ���
grid on                                %������
axis equal                             %ʹ���������
legend([repmat('\ita/h\rm=',length(a),1),num2str(a')])%ͼ��

%�������.��Ⱥ�����
