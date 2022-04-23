%��Բ���������Բ�ͽ����ߵĺ����ļ�
function fun(e)
a=0:360;                               %�Ƕ�����
t=a*pi/180;                            %��Ϊ����
x=cos(t);                              %����������
y=sqrt(1-e^2)*sin(t);                  %����������
figure                                 %����ͼ�δ���
plot(x,y,'LineWidth',2)                %����Բ
grid on                                %������
axis([-1,1,-1,1])                      %�������߷�Χ
axis equal                             %ʹ���������
fs=16;                                 %�����С
title('��Բ���������Բ�ͽ�����','FontSize',fs)%�ӱ���
xlabel('\itx/a','FontSize',fs)         %�Ӻ�����
ylabel('\ity/a','FontSize',fs)         %��������
text(0,0,['\ite\rm=',num2str(e)],'FontSize',fs)%���ƫ�����ı�
rho=(1-e^2*cos(t).^2).^(3/2)./sqrt(1-e^2);%�������ʰ뾶
xc=e^2*cos(t).^3;                      %����Բ�ĺ�����
yc=-e^2/sqrt(1-e^2)*sin(t).^3;         %����Բ��������
hold on                                %����ͼ��
hl=plot([xc(1),1],[0,0],'r--.','LineWidth',2);%���뾶��ȡ���
hc=plot(xc(1)+rho(1)*cos(t),yc(1)+rho(1)*sin(t),'r--');%����1������Բ��ȡ���
for i=2:length(t)                      %���α���ѭ��
    if i==2|i==50|i==92,pause,end      %�ж���ͣ
    set(hc,'XData',xc(i)+rho(i)*cos(t),'YData',yc(i)+rho(i)*sin(t))%��������Բ
    set(hl,'XData',[x(i),xc(i)],'YData',[y(i),yc(i)])%���ð뾶
    plot([xc(i-1),xc(i)],[yc(i-1),yc(i)],'LineWidth',2)%��Բ�Ĺ켣
    pause(0.1)                         %��ʱ(�Զ�����)
end                                    %����ѭ��

%�������.��Ⱥ�����
