%�򵥺����Ķ�����
clear                                  %�������
y=sym('(x+2)/sqrt(2*x+1)')             %�����ķ��ű��ʽ
xm1=0;                                 %��������
xm2=4;                                 %��������
s1=int(y,xm1,xm2)                      %�����ķ��Ż���
f=inline(y)                            %���ߺ���
s2=quad(f,xm1,xm2)                     %����ֵ����
dx=0.1;                                %��������
x=xm1:dx:xm2;                          %����������
y=f(x);                                %����������
s3=trapz(y)*dx                         %�����η������
figure                                 %����ͼ�δ���
fill([x,xm2,xm1],[y,0,0],'y')          %����ɫͼ
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
title('�򵥺����Ķ�����','FontSize',16)%�ӱ���
grid on                                %������
s1=double(s1)                          %��Ϊ��ֵ
text(xm1,1,['\itS\rm=',num2str(s1)],'FontSize',16)%��ʾ���

%�������.��Ⱥ�����
