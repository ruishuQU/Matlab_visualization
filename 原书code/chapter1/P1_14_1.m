%�����ͷ�����
clear                                  %�������
syms x                                 %������ű���
y=2*x+1                                %����ֱ�Ӻ���
yy=finverse(y)                         %����ŷ�����
f=inline(y)                            %����ֱ�Ӻ�����Ϊ���ߺ���
ff=inline(yy)                          %���ŷ�������Ϊ���ߺ���
x=-3:0.1:3;                            %�Ա�������
y=f(x);                                %��������
yy=ff(x);                              %����������
figure                                 %����ͼ�δ���
plot(x,y,x,yy,'--','LineWidth',2)      %�������ͷ���������
hold on                                %��������
plot(x,x,'-.','LineWidth',2)           %���Գ�ֱ��
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
title('�����ͷ�����','FontSize',16)    %�ӱ���
grid on                                %������
axis equal                             %ʹ���������
legend('����','������',2)              %ͼ��
pause                                  %��ͣ
plot(y,x,'.','LineWidth',2)            %�ٻ�����������

%�������.��Ⱥ�����
