%����������֤�ĺ����ļ�
function fun(yn,n,b,sn,tit)
s=int(yn)                              %�������Ż���
fy=inline(yn);                         %�������ź��������ߺ���
fs=inline(s);                          %�������Ż��ֵ����ߺ���
fsn=inline(sn);                        %�ֹ����ֺ��������ߺ���

xm=3;                                  %��������
dx=0.1;                                %�Ա������
x=1:dx:xm;                             %�Ա�������
yn=fy(x);                              %��������ֵ
sn=fsn(x);                             %�ֹ��������ֺ���ֵ
sn=sn-sn(1);                           %ʹ��ֵΪ0
s=fs(x);                               %���Ų������ֺ���ֵ
s=s-s(1);                              %ʹ��ֵΪ0
figure                                 %����ͼ�δ���
plot(x,yn,x,sn,'x--',x,s,'o','LineWidth',2)%��ԭ�����ͻ�������
title([tit,'�������ֵ���֤(\itn\rm=',num2str(n),...
    ',\itb\rm=',num2str(b),')'],'FontSize',16)%�ӱ���
%    ',\itac\rm=',num2str(b),')'],'FontSize',16)%�ӱ���
xlabel('\itax','FontSize',16)          %�Ӻ�����
grid on                                %������
ss=cumtrapz(yn)*dx;                    %���η��ۻ����
hold on                                %��������
plot(x,ss,'sg','LineWidth',2)          %�����η���������
legend('��������','�ֹ���','���Ž�','���η���',0)%��ͼ��

%�������.��Ⱥ�����
