%���ǵļ���
clear                                  %�������
x=[1,-1,-1,1];                         %�ĸ���ĺ�����
y=[1,1,-1,-1];                         %�ĸ����������
%a=atan(y./x)*180/pi                    %�÷����к�����Ƕ�(������)
a=atan2(y,x)*180/pi                    %�õڶ������к�����Ƕ�
X=[0,0,0,0;x]                          %���������
Y=[0,0,0,0;y]                          %���������
figure                                 %����ͼ�δ���
plot(X,Y,'o-','LineWidth',2)           %�þ�����
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
title('ֱ������ϵ�и���ĽǶ�','FontSize',16)%�ӱ���
hold on                                %����ͼ��
plot([-1.5,1.5],[0,0],1.5,0,'>','LineWidth',2)%������
axis equal                             %ʹ����̶����
grid on                                %������
text(x,y,[num2str(a'),repmat('\circ',length(a),1)],'FontSize',16)%��ǽǶ�

%�������.��Ⱥ�����
