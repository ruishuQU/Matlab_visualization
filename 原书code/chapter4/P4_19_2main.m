%��Բ�ƺ�����ת��Χ������ͱ����
clear                                  %�������
b=0:0.01:1;                            %�̰�������
vx=b.^2;                               %�ƺ�����ת�����
e=sqrt(1-b.^2);                        %ƫ����
sx=b.*(b+asin(e)./e)/2;                %�ƺ�����ת�ı����
figure                                 %����ͼ�δ���
subplot(2,1,1)                         %ȡ��ͼ
plot(b,vx,b,sx,'--','LineWidth',2)     %������
title('��Բ�ƺ�����ת��Χ������ͱ����','FontSize',16)%�ӱ���
xlabel('\itb/a','FontSize',16)         %�Ӻ�����
grid on                                %������
legend('\itV_x/V\rm_0','\itS_x/S\rm_0',4)%��ͼ��
text(0,0.5,'\itV\rm_0=4\pi\ita\rm^3/3,\itS\rm_0=4\pi\ita\rm^2',...
    'FontSize',16)                     %��˵��
e=0:0.01:1;                            %ƫ��������
b=sqrt(1-e.^2);                        %�̰���
vx=b.^2;                               %�ƺ�����ת�����
sx=b.*(b+asin(e)./e)/2;                %�ƺ�����ת�ı����
subplot(2,1,2)                         %ȡ��ͼ
plot(e,vx,e,sx,'--','LineWidth',2)     %������
title('��Բ�ƺ�����ת��Χ������ͱ����','FontSize',16)%�ӱ���
xlabel('\ite','FontSize',16)           %�Ӻ�����
grid on                                %������
legend('\itV_x/V\rm_0','\itS_x/S\rm_0')  %��ͼ��
text(0,0.5,'\itV\rm_0=4\pi\ita\rm^3/3,\itS\rm_0=4\pi\ita\rm^2',...
    'FontSize',16)                     %��˵��
b=0.6;                                 %�̰���
P4_19_2fun(b)                          %���ú����ļ�
syms t                                 %������ű���
P4_18_1fun(cos(t),b*sin(t),0,0,pi,'��Բ')%���ú����ļ�
title(['��Բ�ƺ�����ת����Χ������ͱ����(\itb/a\rm=',num2str(b),')'],...
    'FontSize',18)                     %�޸ı���

%�������.��Ⱥ�����
