%Բ����Բ������ʱ�����˶����ɵĺ����ļ�
function fun(r,d)
n=6;                                   %Բ��ת��Ȧ��
t=linspace(0,n*2*pi,500);              %Բ�Ľ�����
p=r/(1-r)*t;                           %Բ�Ľ�
xc=(1-r)*sin(p);                       %���ĺ�����
yc=(1-r)*cos(p);                       %����������
x=xc-d*sin(t);                         %���������
y=yc+d*cos(t);                         %����������
%s=sqrt(x.^2+y.^2);                     %����ļ���
phi=linspace(0,2*pi);                  %Բ�Ľ�����
figure                                 %����ͼ�δ���
plot(sin(phi),cos(phi),'LineWidth',2)  %��Բ��
fs=16;                                 %�����С
title('Բ����Բ���޻�����ʱ����Ĺ��','FontSize',fs)%��ʾ����
xlabel('\itx/R','FontSize',fs)         %x��ǩ
ylabel('\ity/R','FontSize',fs)         %y��ǩ
txt=['\itr/R\rm=',num2str(r),',\itd/R\rm=',num2str(d)];%�����ַ���
text(0,0,txt,'FontSize',fs)            %��ʾ�ַ���
grid on                                %������
axis equal ij                          %ʹ���������
hold on                                %����ͼ��
%hc=plot(r*cos(phi),1-r+r*sin(phi),'m','LineWidth',2);%��Բ�̲�ȡ���
hc=fill(r*cos(phi),1-r+r*sin(phi),'y','LineWidth',2);%��Բ�̲�ȡ���
hl1=plot([0,0],[1-r,1],'.-g','LineWidth',2);%�����ĵ��е�����߲�ȡ���
hl2=plot([0,0],[1-r,1-r+d],'.-r','LineWidth',2);%�����ĵ���������߲�ȡ���
x0=0;                                  %�����ʼ������
y0=1-r+d;                              %�����ʼ������
pause                                  %��ͣ
dt=0.5/pi;                             %�Ƕȼ��
t=0;                                   %��ʼ��
while get(gcf,'CurrentCharacter')~=char(27)%����ESC��ѭ��
    t=t+dt;                            %��һ�Ƕ�
    p=r/(1-r)*t;                       %Բ�Ľ�
    xc=(1-r)*sin(p);                   %Բ�ĺ�����
    yc=(1-r)*cos(p);                   %Բ��������
    x1=sin(p);                         %Բ����Բ���Ӵ���ĺ�����
    y1=cos(p);                         %Բ����Բ���Ӵ����������
    x=xc-d*sin(t);                     %���������
    y=yc+d*cos(t);                     %����������
    set(hc,'XData',xc+r*cos(phi),'YData',yc+r*sin(phi))%����Բ�̵�λ��
    set(hl1,'XData',[xc,x1],'YData',[yc,y1])%�������ĵ����ߵ�λ��
    set(hl2,'XData',[xc,x],'YData',[yc,y])%�������ĵ������λ��
    plot([x0,x],[y0,y],'LineWidth',2)  %������Ĺ��
    x0=x;y0=y;                         %��������
%    pause(0.01)
    drawnow                            %ˢ����Ļ
end                                    %����ѭ��

%�������.��Ⱥ�����
