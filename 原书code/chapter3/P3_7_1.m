%����˫���������µ�����Ķ���
clear                                  %�������
xm=5;                                  %��������
dx=0.01;                                %���
x=dx:dx:xm;                            %����������
y=1./x;                                %����������
figure                                 %����ͼ�δ���
plot(x,y,'LineWidth',2)                %������
title('����˫����������˫��֮������','FontSize',16)%�ӱ���
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
ylabel('\ity/a','FontSize',16)         %��������
text(xm/2,xm/2,'\itA/a\rm^2=2','FontSize',16)%������
grid on                                %������
hold on                                %��������
h0=plot(x(1),y(1),'ro');               %���е㲢ȡ���
h1=fill([0,2*x(1),0],[2/x(1),0,0],'g');%����ɫͼ��ȡ���
axis equal                             %ʹ���������
axis([0,xm,0,xm])                      %�������߷�Χ
for i=1:length(x)                      %������ѭ��
    set(h0,'XData',x(i),'YData',y(i))  %�����е�������ʾ����
    set(h1,'XData',[0,2*x(i),0],'YData',[2/x(i),0,0])%����ɫͼ������ʾ����
    drawnow                            %ˢ����Ļ
    if i==1|i==200,pause,end           %�ж���ͣ
end                                    %����ѭ��

%�������.��Ⱥ�����
