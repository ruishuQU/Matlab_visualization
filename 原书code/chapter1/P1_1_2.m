%����ֵ�����Ĺ���֮��
clear                                  %�������
z=input('�����븴��:');                %�������뷨����
%z=3+4i;                                %�����ο�ֵ
x=real(z);                             %ȡʵ��
y=imag(z);                             %ȡ�鲿
figure                                 %����ͼ�δ���
plot([0,x],[0,y],'-o','LineWidth',2)   %����
title('�þ���ֵ����������ģ','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
grid on                                %������
text(x,y,[num2str(x),',',num2str(y)],'FontSize',16)%��ʾ����
r=abs(z);                              %��ģ
text(x/2,y/2,['\itr\rm=',num2str(r)],'FontSize',16)%��ʾģ
a=angle(z);                            %�����
t=linspace(0,a);                       %�Ƕ�����
x=r/10*cos(t);                         %���ĺ�����
y=r/10*sin(t);                         %����������
hold on                                %��������
plot(x,y,'LineWidth',2)                %����
axis equal                             %ʹ���������
text(0,0,['\it\theta\rm=',num2str(a*180/pi),'\circ'],'FontSize',16)%��ʾ����

%�������.��Ⱥ�����
