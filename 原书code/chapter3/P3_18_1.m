%ҷ�����ߺ����ߵĳ���
clear                                  %�������
tm=pi/2;                               %���α���
dt=0.01;                               %�α������
t=tm:-dt:dt;                           %�α�������
x=log(cot(t/2))-cos(t);                %����������
y=sin(t);                              %����������
figure                                 %����ͼ�δ���
plot(x,y,-x,y,'LineWidth',2)           %������ҷ������
title('ҷ�����ߺ�����','FontSize',16)  %�ӱ���
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
ylabel('\ity/a','FontSize',16)         %��������
grid on                                %������
axis equal                             %ʹ���������
hold on                                %��������
h1=plot([0,0],[0,1],'-or','LineWidth',2);%���ұ����߲�ȡ���
h2=plot([0,0],[0,1],'-or','LineWidth',2);%��������߲�ȡ���
pause                                  %��ͣ
for i=1:length(t)                      %���α���ѭ��
    x0=x(i);                           %ȡ�е������
    y0=y(i);                           %ȡ�е�������
    xx=x(i)+y(i)/tan(t(i));            %��������ύ������
    set(h1,'XData',[x0,xx],'YData',[y0,0])%�����ұ�����������ʾ����
    set(h2,'XData',[-x0,-xx],'YData',[y0,0])%�����������������ʾ����
    drawnow                            %ˢ����Ļ
    pause(0.01)                        %��ʱ
    if i==120,pause,end                %�ж���ͣ
end                                    %����ѭ��

%�������.��Ⱥ�����
