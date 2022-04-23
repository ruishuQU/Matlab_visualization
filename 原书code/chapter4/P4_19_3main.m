%��Բ��������ת��Χ������ͱ����
clear                                  %�������
b=0:0.01:1;                            %�̰�������
vz=b;                                  %��������ת�����
e=sqrt(1-b.^2);                        %ƫ����
sz=(1+b.^2./e.*log((1+e)./(1-e))/2)/2; %��������ת�ı����
figure                                 %����ͼ�δ���
subplot(2,1,1)                         %ȡ��ͼ
plot(b,vz,b,sz,'--','LineWidth',2)     %������
title('��Բ�Ƹ�����ת��Χ������ͱ����','FontSize',16)%�ӱ���
xlabel('\itb/a','FontSize',16)         %�Ӻ�����
grid on                                %������
legend('\itV_z/V\rm_0','\itS_z/S\rm_0',4)%��ͼ��
text(0,0.5,'\itV\rm_0=4\pi\ita\rm^3/3,\itS\rm_0=4\pi\ita\rm^2',...
    'FontSize',16)                     %��˵��
e=0:0.01:1;                            %ƫ��������
b=sqrt(1-e.^2);                        %�̰���
vz=b;                                  %��������ת�����
sz=(1+b.^2./e.*log((1+e)./(1-e))/2)/2; %��������ת�ı����
subplot(2,1,2)                         %ȡ��ͼ
plot(e,vz,e,sz,'--','LineWidth',2)     %������
title('��Բ�Ƹ�����ת��Χ������ͱ����','FontSize',16)%�ӱ���
xlabel('\ite','FontSize',16)           %�Ӻ�����
grid on                                %������
legend('\itV_z/V\rm_0','\itS_z/S\rm_0',3)%��ͼ��
text(0,0.5,'\itV\rm_0=4\pi\ita\rm^3/3,\itS\rm_0=4\pi\ita\rm^2',...
    'FontSize',16)                     %��˵��
b=0.6;                                 %�̰���
P4_19_3fun(b)                          %���ú����ļ�
syms t                                 %������ű���
P4_18_2fun(cos(t),b*sin(t),-pi/2,pi/2,'��Բ')%���ú����ļ�
title(['��Բ�Ƹ�����ת����Χ������ͱ����(\itb/a\rm=',num2str(b),')'],...
    'FontSize',18)                     %�޸ı���

%�������.��Ⱥ�����
