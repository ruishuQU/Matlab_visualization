%Բ�Ľ����ߵĶ���
clear                                  %�������
t=linspace(0,2*pi);                    %�Ƕ�����
figure                                 %����ͼ�δ���
plot(cos(t),sin(t),'LineWidth',2)      %��Բ
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
ylabel('\ity/a','FontSize',16)         %��������
title('Բ�Ľ����ߵĶ���','FontSize',16)%�ӱ���
grid on                                %������
axis equal                             %ʹ���������
hold on                                %��������
h1=plot([1,1],[0,0],'--','LineWidth',2);%���߲�ȡ���
h2=plot([1,0],[0,0],'--','LineWidth',2);%���߲�ȡ���
dt=0.1;                                %�Ƕȼ��
t=0;                                   %��ʼ�Ƕ�
x0=1;y0=0;                             %�������
pause                                  %��ͣ
for i=1:100                            %ѭ��
    t=t+dt;                            %��һ���Ƕ�
    x=cos(t)+t*sin(t);                 %������
    y=sin(t)-t*cos(t);                 %������
    plot([x0,x],[y0,y],'LineWidth',2)  %��������
    set(h1,'XData',[cos(t),x],'YData',[sin(t),y])%�����ߵ�����
    set(h2,'XData',[cos(t),0],'YData',[sin(t),0])%�����ߵ�����
    drawnow                            %ˢ����Ļ
    pause(0.1)                         %��ʱ0.1��
    x0=x;y0=y;                         %������ʼ����
end                                    %����ѭ��

%�������.��Ⱥ�����
