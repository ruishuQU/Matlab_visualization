%���ߵĲα������̺Ͱ����γɵĶ���
clear                                  %�������
t=linspace(0,2*pi,101);                %�α�������
x=t-sin(t);                            %���ߺ���������
y=1-cos(t);                            %��������������
xx=cos(t);                             %Բ�ĺ�����
yy=sin(t)+1;                           %Բ��������
figure                                 %����ͼ�δ���
plot([-1,7.3],[0,0],'LineWidth',2)     %��ˮƽ��
hold on                                %��������
plot(xx,yy,'--','LineWidth',2)         %��Բ
plot([0,0],[0,1],'--o','LineWidth',2)  %���뾶
plot(x,y,'--','LineWidth',2)           %������
title('�����γɵĶ���','FontSize',16)  %�ӱ���
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
ylabel('\ity/a','FontSize',16)         %��������
grid on                                %������
axis equal                             %ʹ���������
h1=plot(xx,yy,'r','LineWidth',2);      %��Բ��ȡ���
h2=plot([0,0],[0,1],'-o','LineWidth',2);%���뾶��ȡ���
h=text(0,0,'\itP','FontSize',16);      %��Ƕ��㲢ȡ���
for i=1:length(t)                      %���α���ѭ��
    if i==1|i==35|i==52|i==75,pause,end%�ж���ͣ
    set(h1,'XData',xx+t(i))            %����Բ�ĺ�������ʾ����
    set(h2,'XData',[x(i),t(i)],'YData',[y(i),1])%���ð뾶����
    set(h,'Position',[x(i),y(i)])      %������ĸ������
    if i>1                             %������ǳ�ʼ״̬
        plot([x(i-1),x(i)],[y(i-1),y(i)],'LineWidth',2)%���߶���
    end                                %��������
    pause(0.1)                         %��ʱ
%    drawnow                            %ˢ����Ļ
end                                    %����ѭ��

%�������.��Ⱥ�����
