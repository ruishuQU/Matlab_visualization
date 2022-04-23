%�༶�����ߵ�����ͳ��ȵ�������
clear                                  %�������
P4_16_2fun(1)                          %��1���ú����ļ�
P4_16_2fun(2)                          %��2���ú����ļ�
P4_16_2fun(3)                          %��3���ú����ļ�
P4_16_2fun(4)                          %��4���ú����ļ�
%----------------------------------------------------------
syms t n                               %������ű���
r=2*cos(t/n)^n;                        %���ż���
sn=int(r^2/2,0,pi*n)                   %����Ż���
dln=sqrt(r^2+diff(r)^2);               %���ű�������
ln=int(dln,0,pi*n)                     %����Ż���
nm=10;                                 %�������
n=1:nm;                                %��������
sn=subs(sn,'n',n);                     %�滻����
sn=double(sn);                         %��Ϊ˫������
ln=subs(ln,'n',n);                     %�滻����
ln=double(ln);                         %��Ϊ˫������
figure                                 %����ͼ�δ���
subplot(2,1,1)                         %ȡ��ͼ
plot(n,sn,'*-','LineWidth',2)          %������������
title('��������ߵ����','FontSize',16)%�ӱ���
xlabel('\itn','FontSize',16)           %�Ӻ�����
ylabel('\itS_n/a\rm^2','FontSize',16)  %��������
text(n,sn,num2str(sn'),'FontSize',16)  %��ֵ
sn=4*n.*cumprod(2*n-1)./cumprod(2*n)*pi/2;%�ý����������ֵ
hold on                                %����ͼ��
plot(n,sn,'or')                        %������
legend('���Ž�','������',2)            %��ͼ��
grid on                                %������
subplot(2,1,2)                         %ȡ��ͼ
plot(n,ln,'*-','LineWidth',2)          %������������
title('��������ߵĳ���','FontSize',16)%�ӱ���
xlabel('\itn','FontSize',16)           %�Ӻ�����
ylabel('\itL_n/a','FontSize',16)       %��������
text(n,ln,num2str(ln'),'FontSize',16)  %��ֵ
n=3:2:nm;                              %��������
ln=4*n.*cumprod(n-2)./cumprod(n-1)*pi/2;%�ý����������ֵ
ln=[2*pi,ln];                          %�����һ��ֵ
hold on                                %����ͼ��
plot([1,n],ln,'sg')                    %����������������
n=4:2:nm;                              %ż������
ln=4*n.*cumprod(n-2)./cumprod(n-1);    %�ý����������ֵ
ln=[8,ln];                             %�����һ��ֵ
plot([2,n],ln,'dr')                    %��ż������������
legend('���Ž�','ż��������','����������',2)%��ͼ��
grid on                                %������

%�������.��Ⱥ�����
