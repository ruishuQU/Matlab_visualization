%�����ߵĲα������̺�����
clear                                  %�������
t=linspace(0,2*pi);                    %�α�������
x=cos(t).^3;                           %����������
y=sin(t).^3;                           %����������
figure                                 %����ͼ�δ���
plot(x,y,'LineWidth',2)                %������
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
ylabel('\ity/a','FontSize',16)         %��������
title('�����ߺ�����','FontSize',16)    %�ӱ���
grid on                                %������
axis equal                             %ʹ���������
hold on                                %��������
h0=plot(1,0,'go','LineWidth',2);       %���е㲢ȡ���
h1=plot([1,0],[0,0],'-*r','LineWidth',2);%�����߲�ȡ���
pause                                  %��ͣ
for i=1:length(t)                      %���α���ѭ��
    x0=x(i);                           %ȡ�е������
    y0=y(i);                           %ȡ�е�������
    set(h0,'XData',x0,'YData',y0)      %�����е�����
    x0=cos(t(i));                      %��������ύ������
    y0=sin(t(i));                      %���������ύ������
    set(h1,'XData',[x0,0],'YData',[0,y0])%��������������ʾ����
    drawnow                            %ˢ����Ļ
    pause(0.1)                         %��ʱ
    if i==15,pause,end                 %�ж���ͣ
end                                    %����ѭ��

%�������.��Ⱥ�����
